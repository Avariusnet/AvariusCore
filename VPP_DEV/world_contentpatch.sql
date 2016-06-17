DELETE FROM `item_template` WHERE `entry` = 700521;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700521, 12, 0, 'Wandervolkmarke', 55276, 2, 2147483904, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Im Besitz des Wandervolkes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
UPDATE `item_template` SET `stackable`='100' WHERE `entry`='700521';


DELETE FROM `item_template` WHERE `entry` = 700522;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700522, 12, 0, 'Marke von Felicitas', 55276, 2, 2147483904, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wer mag das nur sein?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
UPDATE `item_template` SET `stackable`='100' WHERE `entry`='700522';DELETE FROM `creature_template` WHERE `entry` = 800071;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800071,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */25553,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Buerger des Wandervolkes',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800071;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800071','800071','0','1','1','25553','0','3132.19','-6262.08','140.18','4.11','25','0','0','1000000','250000','0');

DELETE FROM `creature_template` WHERE `entry` = 800072;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800072,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */12051,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Urahne des Wandervolkes',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800072;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800072','800072','0','1','1','12051','0','3085.04','-6149.00','131.98','5.44','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800073;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800073,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */10771,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Cardamon',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800073;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800073','800073','0','1','1','10771','0','3140.80','-6235.28','141.14','3.36','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800074;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800074,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */8714,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Kuuhry',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800074;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800074','800074','0','1','1','8714','0','3146.02','-6224.47','141.27','2.75','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800075;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800075,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */985,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Ahyvahn',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800075;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800075','800075','0','1','1','985','0','3151.12','-6214.58','140.80','2.42','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800076;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800076,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */2169,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Pfaayver',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800076;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800076','800076','0','1','1','2169','0','3121.06','-6219.20','141.16','6.21','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800077;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800077,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */18640,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Suuhl',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800077;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800077','800077','0','1','1','18640','0','3108.51','-6183.75','139.73','5.90','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800078;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800078,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */10700,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Elohkihti',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800078;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800078','800078','0','1','1','10700','0','3134.72','-6167.60','140.00','4.45','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800079;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800079,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */5493,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Algoya',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800079;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800079','800079','0','1','1','5493','0','3146.67','-6172.19','140.22','4.14','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800080;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800080,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */19740,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Magister Elostraio',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800080;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800080','800080','0','1','1','19740','0','3094.93','-6133.26','201.16','0.47','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800081;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800081,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */221,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Waisenkind des Wandervolkes',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800081;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800081','800081','0','1','1','221','0','3078.23','-6110.38','202.50','0.19','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800082;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800082,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */9531,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Ausgestossener',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800082;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800082','800082','0','1','1','9531','0','3088.51','-6085.19','201.15','5.87','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800083;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800083,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */19957,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Gewuerzhaendler',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800083;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800083','800083','0','1','1','19957','0','3100.93','-6065.93','201.16','5.50','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800084;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800084,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */7109,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Spezialhaendler',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800084;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800084','800084','0','1','1','7109','0','3122.46','-6051.97','201.16','4.71','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800085;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800085,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27821,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Janarius',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800085;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800085','800085','0','1','1','27821','0','3152.41','-6032.42','201.14','5.00','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800086;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800086,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */16754,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Leandaria',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'leandaria');
  
  DELETE FROM `creature` WHERE `id` = 800086;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800086','800086','0','1','1','16754','0','3113.41','-6200.10','140.74','0.58','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800087;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800087,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */16217,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Indomata',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800087;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800087','800087','0','1','1','16217','0','3186.35','-5997.97','203.88','3.33','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800088;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800088,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */3053,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Raetsel',
  /*  Subname */'Wandervolk',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'raetsel');
  
  DELETE FROM `creature` WHERE `id` = 800088;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800088','800088','0','1','1','3053','0','3185.15','-6121.44','201.14','2.69','25','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800089;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800089,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */7625,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Eva',
  /*  Subname */'Die Herausforderin',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800089;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800089','800089','1','1','1','7625','0','7358.63','-1539.30','154.62','2.74','120','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800090;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800090,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */28155,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Maya',
  /*  Subname */'Die Herausforderin',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800090;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800090','800090','1','1','1','28155','0','7385.22','-1621.97','514.88','0.33','120','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800091;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800091,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */28155,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Maya',
  /*  Subname */'Die Herausforderin',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800091;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800091','800091','1','1','1','28155','0','7434.31','-1434.06','268.92','4.02','120','0','0','1000000','250000','0');DELETE FROM `creature_template` WHERE `entry` = 800092;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800092,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */7625,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Eva',
  /*  Subname */'Die Herausforderin',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
  DELETE FROM `creature` WHERE `id` = 800092;
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800092','800092','1','1','1','7625','0','7447.92','-1561.84','178.55','5.38','120','0','0','1000000','250000','0');DELETE FROM `quest_template` WHERE  `id` = 900300;
DELETE FROM `quest_template_addon` WHERE `id` = 900300;
DELETE FROM `creature_questender` WHERE `id` = 800090 AND `quest` = 900300;
DELETE FROM `creature_queststarter` WHERE `id` = 800089   AND `quest` = 900300;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900300', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'10000000', 
/* RewardBonusMoney` */'10000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '38186',
/* RewardAmount1` */ '5',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Das Jumpevent',
/* LogDescription  */ 'Macht Euch mit dem Jumpevent vertraut um spaeter ueber Eure Grenzen hinauszuwachsen und grosse Erfolge zu erreichen.',
/* QuestDescription   */'Hallo $N, damit ihr nicht ins kalte Wasser fallt, sollt ihr Euch erstmal in Ruhe mit diesem Event auseinander setzen. Erreicht das Ende um Eure Belohnung abzuholen.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900300,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
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
(800090, 900300);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800089, 900300);DELETE FROM `quest_template` WHERE  `id` = 900301;
DELETE FROM `quest_template_addon` WHERE `id` = 900301;
DELETE FROM `creature_questender` WHERE `id` = 800091 AND `quest` = 900301;
DELETE FROM `creature_queststarter` WHERE `id` = 800092   AND `quest` = 900301;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900301', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'10000000', 
/* RewardBonusMoney` */'10000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '38186',
/* RewardAmount1` */ '5',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Das Portalevent',
/* LogDescription  */ 'Macht Euch mit dem Portalevent vertraut um spaeter ueber Eure Grenzen hinauszuwachsen und grosse Erfolge zu erreichen.',
/* QuestDescription   */'Hallo $N, damit ihr nicht ins kalte Wasser fallt, sollt ihr Euch erstmal in Ruhe mit diesem Event auseinander setzen. Erreicht das Ende um Eure Belohnung abzuholen.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900301,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
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
(800091, 900301);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800092, 900301);
DELETE FROM `quest_template` WHERE  `id` = 900802;
DELETE FROM `quest_template_addon` WHERE `id` = 900802;
DELETE FROM `creature_questender` WHERE `id` = 800071 AND `quest` = 900802;
DELETE FROM `creature_queststarter` WHERE `id` = 800027   AND `quest` = 900802;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900802', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Gunst',
/* LogDescription  */ 'Nehmt den Port zum Wandervolk und meldet Euch dort beim ersten der Euch ueber den Weg laeuft.',
/* QuestDescription   */'Hallo $N, bitte reist zum Wandervolk und meldet Euch dort beim Ersten der Euch ueber den Weg laeuft.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900802,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900801,
  /*  NextQuestID  */900803,
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
(800071, 900802);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800027, 900802);DELETE FROM `quest_template` WHERE  `id` = 900803;
DELETE FROM `quest_template_addon` WHERE `id` = 900803;
DELETE FROM `creature_questender` WHERE `id` = 800086 AND `quest` = 900803;
DELETE FROM `creature_queststarter` WHERE `id` = 800071   AND `quest` = 900803;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900803', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'2000000', 
/* RewardBonusMoney` */'2000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Leandaria',
/* LogDescription  */ 'Bringt Leandaria 50 Stueck Kupferpulver.',
/* QuestDescription   */'Hallo $N, Leandaria braucht Kupferpulver. Bitte bringt ihr 50 Stueck davon.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '24186',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'50',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900803,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900802,
  /*  NextQuestID  */900804,
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
(800086, 900803);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800071, 900803);DELETE FROM `quest_template` WHERE  `id` = 900804;
DELETE FROM `quest_template_addon` WHERE `id` = 900804;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900804;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900804;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900804', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'3000000', 
/* RewardBonusMoney` */'3000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '200000',
/* RewardAmount1` */ '5',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Spezialhaendler',
/* LogDescription  */ 'Bringt dem Spezialhaendler 5 Embleme des Triumphs und 20 Waffen der Unterstuetzer.',
/* QuestDescription   */'Hallo $N, ich bin der Spezialhaendler des Wandevolkes. Wenn ihr mich kennen lernen wollt, dann erfuellt ein paar Aufgaben fuer mich.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '47241',
/* RequiredItemId2`  */ '700519',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'5',
/* RequiredItemCount2`  */ '20',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900804,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900802,
  /*  NextQuestID  */900805,
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
(800084, 900804);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900804);DELETE FROM `quest_template` WHERE  `id` = 900805;
DELETE FROM `quest_template_addon` WHERE `id` = 900805;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900805;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900805;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900805', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'-10000000', 
/* RewardBonusMoney` */'-10000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700498',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Das Schwert',
/* LogDescription  */ 'Bezahlt mir einen kleinen Obulus und die Sache hat sich erledigt. So als kleines "Geschenk".',
/* QuestDescription   */'Hallo $N, seit ich beim Wandervolk aufgenommen wurde, hat sich mein Leben verbessert.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900805,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900804,
  /*  NextQuestID  */900806,
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
(800084, 900805);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900805);DELETE FROM `quest_template` WHERE  `id` = 900806;
DELETE FROM `quest_template_addon` WHERE `id` = 900806;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900806;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900806;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900806', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'500000', 
/* RewardBonusMoney` */'500000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'20',
/* RewardItem1` */ '700499',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Stein',
/* LogDescription  */ 'Toetet 20 Spieler der gegnerischen Fraktion.',
/* QuestDescription   */'Hallo $N, was belebt das Geschaeft besser, als potentielle Konkurrenten aus dem Weg zu raeumen? Richtig, nichts. Deswegen toetet sie.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900806,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900805,
  /*  NextQuestID  */900807,
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
(800084, 900806);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900806);DELETE FROM `quest_template` WHERE  `id` = 900807;
DELETE FROM `quest_template_addon` WHERE `id` = 900807;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900807;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900807;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900807', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'2000000', 
/* RewardBonusMoney` */'2000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700521',
/* RewardAmount1` */ '5',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Marken',
/* LogDescription  */ 'Bringt mir die Waffen der Unterstuetzer.',
/* QuestDescription   */'Hallo $N, ich moechte das ihr mir die Waffen der Unterstuetzer bringt. Diese sind der begehrenswert. Daher moechte ich sie auch haben.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700519',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'25',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900807,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900806,
  /*  NextQuestID  */900808,
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
(800084, 900807);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900807);DELETE FROM `quest_template` WHERE  `id` = 900808;
DELETE FROM `quest_template_addon` WHERE `id` = 900808;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900808;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900808;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900808', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700521',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Gib mir Marken',
/* LogDescription  */ 'Bringt mir 10 Waffen der Unterstuetzer sowie 4 Arktische Pelze.',
/* QuestDescription   */'Hallo $N, ich moechte das ihr mir die Waffen der Unterstuetzer bringt. Diese sind der begehrenswert. Daher moechte ich sie auch haben.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '44128',
/* RequiredItemId2`  */ '700519',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'4',
/* RequiredItemCount2`  */ '10',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900808,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900807,
  /*  NextQuestID  */900809,
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
(800084, 900808);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900808);DELETE FROM `quest_template` WHERE  `id` = 900809;
DELETE FROM `quest_template_addon` WHERE `id` = 900809;
DELETE FROM `creature_questender` WHERE `id` = 800084 AND `quest` = 900809;
DELETE FROM `creature_queststarter` WHERE `id` = 800084   AND `quest` = 900809;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900809', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700522',
/* RewardAmount1` */ '2',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Felicitas',
/* LogDescription  */ 'Das Mysterium beginnt. Bringt mir die Wandervolkmarken.',
/* QuestDescription   */'Hallo $N, um sie erfahren wer Felicitas ist, muessen wir ein paar Vorbereitungen treffen.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700521',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'5',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900809,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900808,
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
(800084, 900809);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800084, 900809);



DELETE FROM `quest_template` WHERE  `id` = 900810;
DELETE FROM `quest_template_addon` WHERE `id` = 900810;
DELETE FROM `creature_questender` WHERE `id` = 800080 AND `quest` = 900810;
DELETE FROM `creature_queststarter` WHERE `id` = 800071   AND `quest` = 900810;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900810', 
/* TYPE  */ '62',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'-20000000', 
/* RewardBonusMoney` */'-20000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '200000',
/* RewardAmount1` */ '5',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Elostraio',
/* LogDescription  */ 'Elostraio braucht Gold! Gebt mir Gold!',
/* QuestDescription   */'Hallo $N, ich bin ein armer Schlucker. Ich brauche Gold. Gebt mir bitte Gold. Bitte Bitte Bitte....',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900810,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900802,
  /*  NextQuestID  */900811,
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
(800080, 900810);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800071, 900810);DELETE FROM `quest_template` WHERE  `id` = 900811;
DELETE FROM `quest_template_addon` WHERE `id` = 900811;
DELETE FROM `creature_questender` WHERE `id` = 800086 AND `quest` = 900811;
DELETE FROM `creature_queststarter` WHERE `id` = 800086   AND `quest` = 900811;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900811', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'2000000', 
/* RewardBonusMoney` */'2000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '38186',
/* RewardAmount1` */ '2',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Wyrm',
/* LogDescription  */ 'Bringt Leandaria 20 Waffen der Unterstuetzer, 15 Wandervolkmarken sowie 20 Marken von Felicitas',
/* QuestDescription   */'Hallo $N, damit ihr in meiner Gunst steht muesst ihr mir 20 Waffen, 15 Wandervolkmarken sowie 20 Marken von Felicitas bringen. Habt ihr das geschafft gebe ich Euch etwas frei was Euch freuen wird.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700519',
/* RequiredItemId2`  */ '700521',
/* RequiredItemId3` */ '700522',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'20',
/* RequiredItemCount2`  */ '15',
/* RequiredItemCount3`  */ '20',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900811,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900810,
  /*  NextQuestID  */900812,
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
(800086, 900811);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800086, 900811);

DELETE FROM `creature_template` WHERE `entry` = 800093;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800093,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */31196,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Zuendende Kapsel',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'tolreosadd');
  

UPDATE `creature_template` SET `HealthModifier`='20', `ArmorModifier`='20', `DamageModifier`='40' WHERE `entry`='800093';DELETE FROM `creature_template` WHERE `entry` = 800094;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800094,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */9583,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Drachenbaby',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'tyraniumadd');
  

UPDATE `creature_template` SET `HealthModifier`='20', `ArmorModifier`='20', `DamageModifier`='3' WHERE `entry`='800094';/* die ganz nette Anna, selbiger Loot wie bei Tolreos momentan*/

DELETE FROM `creature_loot_template` WHERE `Entry` = 800095;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47241, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47249, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47498, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47510, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47512, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47522, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47495, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47468, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47561, 0, 12.5, 0, 1, 2, 1, 1); 



REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800095,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */3597,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Anna',
  /*  Subname */'die teuflische',
  /*  Iconname */'Attack',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  /*faction*/21,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */2,
 /*  speedrun */ 2.14286,
  /*  scale */1.5,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */7000,
  /* RangeAttackTime`  */2000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
  /*  unit flags2  */0,
  /*  dynamicflag */2,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */7,
  /* type  */6,
  /* type flag  */ 4,
  /*  lootid */800095,
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
  /* mingold`  */5000000, 
  /* MaxGold  */10000000, 
  /*  AiName */'AggressorAI',		/* greift an, sobald in Aggro Range*/
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */13613872, 
  /*  flags_extra` */262144, 
  /* Scriptname  */'anna');
  
UPDATE `creature_template` SET `HealthModifier` = 444, `ArmorModifier`=50, `DamageModifier`=123 WHERE `entry` = 800095;

/* Position für den Port wäre 
	
	pPlayer->TeleportTo(169, 3036.49, -3145.50, 92.87, 0.91);
*/

DELETE FROM `creature` WHERE `guid` = 800095;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800095','800095','169','1','1','29791','367','3077.28','-3097.19','99.93','3.98','14400','0','0','1000000','250000','0');

DELETE FROM `creature_equip_template` where `CreatureID` = 800095;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800095', '1', '50731', '1859', '0');


DELETE FROM `creature_template` WHERE `entry` = 800097;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800097,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */12891,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Therakiny',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */1,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'therakinadd');
  
  UPDATE `creature_template` SET `HealthModifier`= 50, `ArmorModifier`=5, `DamageModifier`=100 WHERE `entry`=800060;
  
DELETE FROM `creature_equip_template` where `CreatureID` = 800097;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800097', '1', '50731', '1859', '0');DELETE FROM `creature_template` WHERE `entry` = 800098;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800098,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVE',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 


DELETE FROM `npc_vendor` WHERE `entry` = 800098;  
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50046,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50047,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50048,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50049,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50050,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50051,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50052,0,0,0);

/*T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50078,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50079,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50080,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50081,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50082,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50087,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50088,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50089,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50090,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50094,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50095,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50096,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50097,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50098,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50105,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50106,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50107,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50108,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50109,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50113,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50114,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50115,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50116,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50117,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50118,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50240,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50241,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50242,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50243,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50244,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50275,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50276,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50277,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50278,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50279,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50324,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50325,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50326,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50327,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50328,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50339,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50340,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50341,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50342,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50375,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50376,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50377,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50378,0,0,0);

/* T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50391,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50392,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50393,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50394,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50396,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50759,0,0,0);
*/

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50760,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50761,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50762,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50763,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50764,0,0,0);
/*  T10
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50765,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50766,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50767,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50768,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50769,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50771,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50772,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50773,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50774,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50775,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50776,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50777,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50778,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50779,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50780,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50781,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50782,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50783,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50784,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50785,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50786,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50787,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50788,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50789,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50793,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50794,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50795,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50796,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50797,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50798,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50799,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50800,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50801,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50802,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50803,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50804,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50805,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50806,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50807,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50808,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50809,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50810,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50811,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50812,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,54592,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53509,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53508,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53507,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53506,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53505,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53504,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53503,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53502,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53501,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53500,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53499,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53498,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53497,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53498,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53497,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53496,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53495,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53494,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53493,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53492,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53491,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,52569,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51789,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51788,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51787,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51786,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51785,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51784,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51783,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51782,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51779,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51586,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51585,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51584,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51583,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51582,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51581,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51580,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51579,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51578,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51577,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51576,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51575,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51574,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51573,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51572,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51566,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51565,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51564,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51563,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51562,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51561,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51560,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51559,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51558,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51557,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51556,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51555,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51554,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51553,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51552,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51551,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51550,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51548,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51387,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51386,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51385,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51384,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51383,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51382,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51381,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51380,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51379,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51326,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51325,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51025,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51024,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51023,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51022,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51020,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51019,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51018,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51017,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51016,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51015,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51014,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51013,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51011,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51010,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51009,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51008,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51007,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51006,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51005,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51004,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51003,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51002,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51001,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51000,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50998,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50990,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50988,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50986,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50985,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50967,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50966,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50969,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50968,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50965,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50967,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50868,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50867,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50866,0,0,0);





DELETE FROM `creature_template` WHERE `entry` = 800099;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800099,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVP',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 


DELETE FROM `npc_vendor` WHERE `entry` = 800099;  
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40810,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40811,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40812,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40829,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40830,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40831,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40851,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40850,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40852,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40870,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40871,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40872,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40910,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40928,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40934,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40940,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40964,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40994,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40995,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41002,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41008,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41014,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41020,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41028,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41034,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41039,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41045,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41082,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41088,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41138,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41144,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41152,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41158,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41200,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41206,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41212,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41218,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41276,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41282,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41288,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41294,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41299,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41305,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41311,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41317,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41322,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41328,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41651,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41656,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41662,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41668,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41673,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41679,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41684,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41716,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41768,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41774,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41855,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41860,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41865,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41870,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41875,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41916,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41922,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41928,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41835,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41941,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41947,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41954,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41960,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41966,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41972,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41994,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41999,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42006,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42012,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42018,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42527,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42533,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42539,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42561,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42566,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42572,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,49187,0,0,0);



DELETE FROM `creature_template` WHERE `entry` = 800100;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800100,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVE 2',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 



/* T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50865,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50864,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50863,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50862,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50861,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50860,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50859,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50858,0,0,0);
/*
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50857,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50856,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50855,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50854,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50853,0,0,0); */

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50852,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,51777,0,0,0);


/*
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50850,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50849,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50847,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50846,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50845,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50844,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50843,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50842,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50841,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50839,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50838,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50837,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50836,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50835,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50834,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50833,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50832,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50831,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50830,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50828,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50827,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50826,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50825,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50824,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50823,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50821,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50822,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50820,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50819,0,0,0); */
DELETE FROM `creature_template` WHERE `entry` = 800096;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800096,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */7625,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Kalastoria',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'neujahrsevent');
  


DELETE FROM `quest_template` WHERE  `id` = 900101;
DELETE FROM `quest_template_addon` WHERE `id` = 900101;
DELETE FROM `creature_questender` WHERE `id` = 800096 AND `quest` = 900101;
DELETE FROM `creature_queststarter` WHERE `id` = 800096   AND `quest` = 900101;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900101', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '0', 
/* RewardMoney`  */'0', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Frohes Neujahr',
/* LogDescription  */ 'Wir feiern gemeinsam Neujahr. Begebt Euch nun durch das Labyrinth.',
/* QuestDescription   */'Willkommen beim Neujahrsevent. Begebt Euch nun durch das Labyrinth. Ihr muesst nur euren Weg suchen, den benoetigten NPC werden ihr finden.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'32258',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '3',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900101,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900100,
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
(800096, 900101);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800096, 900101);


DELETE FROM `quest_template` WHERE  `id` = 900100;
DELETE FROM `quest_template_addon` WHERE `id` = 900100;
DELETE FROM `creature_questender` WHERE `id` = 800096 AND `quest` = 900100;
DELETE FROM `creature_queststarter` WHERE `id` = 800096   AND `quest` = 900100;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900100', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '0', 
/* RewardMoney`  */'0', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Frohes Neujahr',
/* LogDescription  */ 'Wir feiern gemeinsam Neujahr. Begebt Euch als erstes zum Labyrinth.',
/* QuestDescription   */'Willkommen beim Neujahrsevent. Begebt Euch als erstes zum Labyrinth. Ihr muesst nur euren Weg suchen, den benoetigten NPC werden ihr finden.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'25677',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '1',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900100,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
  /*  NextQuestID  */900101,
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
(800096, 900100);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800096, 900100);

DELETE FROM `creature_template` WHERE `entry` = 800097;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800097,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */12891,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Therakiny',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */1,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'therakinadd');
  
  UPDATE `creature_template` SET `HealthModifier`= 50, `ArmorModifier`=5, `DamageModifier`=100 WHERE `entry`=800060;
  
DELETE FROM `creature_equip_template` where `CreatureID` = 800097;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800097', '1', '50731', '1859', '0');



DELETE FROM `creature_template` WHERE `entry` = 800096;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800096,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */7625,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Kalastoria',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
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
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
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
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'neujahrsevent');
  
  DELETE FROM `creature` WHERE `id` = 800096;
  /* Sturmwind */
  REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800096','800096','0','1','1','7625','0','-8857.28','638.38','96.23','2.02','120','0','0','1000000','250000','0');


DELETE FROM `creature_template` WHERE `entry` = 800101;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800101,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Gildenhausvendor',
  /*  Subname */'',
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
  /* Scriptname  */'gildenvendor');
 


DELETE FROM `creature_template` WHERE `entry` = 800100;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800100,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVE 2',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 



/* T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50865,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50864,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50863,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50862,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50861,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50860,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50859,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50858,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50852,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47041,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47271,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47115,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47303,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47290,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47080,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47316,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,47182,0,0,0);


/*
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50857,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50856,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50855,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50854,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50853,0,0,0); */



/*
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50850,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50849,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50847,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50846,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50845,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50844,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50843,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50842,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50841,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50839,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50838,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50837,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50836,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50835,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50834,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50833,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50832,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50831,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50830,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50828,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50827,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50826,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50825,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50824,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50823,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50821,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50822,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50820,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800100,0,50819,0,0,0); */

DELETE FROM `creature_template` WHERE `entry` = 800099;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800099,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVP',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 


DELETE FROM `npc_vendor` WHERE `entry` = 800099;  
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40810,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40811,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40812,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40829,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40830,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40831,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40851,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40850,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40852,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40870,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40871,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40872,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40910,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40928,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40934,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40940,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40964,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40994,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,40995,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41002,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41008,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41014,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41020,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41028,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41034,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41039,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41045,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41082,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41088,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41138,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41144,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41152,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41158,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41200,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41206,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41212,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41218,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41276,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41282,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41288,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41294,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41299,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41305,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41311,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41317,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41322,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41328,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41651,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41656,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41662,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41668,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41673,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41679,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41684,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41716,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41768,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41774,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41855,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41860,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41865,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41870,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41875,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41916,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41922,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41928,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41835,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41941,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41947,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41954,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41960,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41966,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41972,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41994,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,41999,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42006,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42012,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42018,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42527,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42533,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42539,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42561,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42566,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,42572,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800099,0,49187,0,0,0);



DELETE FROM `creature_template` WHERE `entry` = 800098;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800098,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */' Ausstatter',
  /*  Subname */'PVE',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */131,
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
 


DELETE FROM `npc_vendor` WHERE `entry` = 800098;  
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50046,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50047,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50048,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50049,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50050,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50051,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50052,0,0,0);

/*T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50078,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50079,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50080,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50081,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50082,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50087,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50088,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50089,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50090,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50094,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50095,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50096,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50097,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50098,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50105,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50106,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50107,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50108,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50109,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50113,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50114,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50115,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50116,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50117,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50118,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50240,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50241,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50242,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50243,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50244,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50275,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50276,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50277,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50278,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50279,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50324,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50325,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50326,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50327,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50328,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50339,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50340,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50341,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50342,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50375,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50376,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50377,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50378,0,0,0);

/* T10 Block
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50391,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50392,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50393,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50394,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50396,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50759,0,0,0);
*/

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50760,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50761,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50762,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50763,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50764,0,0,0);
/*  T10
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50765,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50766,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50767,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50768,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50769,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50771,0,0,0);
*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50772,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50773,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50774,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50775,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50776,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50777,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50778,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50779,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50780,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50781,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50782,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50783,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50784,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50785,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50786,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50787,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50788,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50789,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50793,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50794,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50795,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50796,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50797,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50798,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50799,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50800,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50801,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50802,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50803,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50804,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50805,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50806,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50807,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50808,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50809,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50810,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50811,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50812,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,54592,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53509,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53508,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53507,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53506,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53505,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53504,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53503,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53502,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53501,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53500,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53499,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53498,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53497,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53498,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53497,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53496,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53495,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53494,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53493,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53492,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,53491,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,52569,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51791,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51789,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51788,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51787,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51786,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51785,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51784,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51783,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51782,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51779,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51586,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51585,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51584,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51583,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51582,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51581,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51580,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51579,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51578,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51577,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51576,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51575,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51574,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51573,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51572,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51566,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51565,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51564,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51563,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51562,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51561,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51560,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51559,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51558,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51557,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51556,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51555,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51554,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51553,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51552,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51551,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51550,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51548,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51387,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51386,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51385,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51384,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51383,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51382,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51381,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51380,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51379,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51326,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51325,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51025,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51024,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51023,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51022,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51020,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51019,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51018,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51017,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51016,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51015,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51014,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51013,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51011,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51010,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51009,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51008,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51007,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51006,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51005,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51004,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51003,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51002,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51001,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,51000,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50998,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50990,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50988,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50986,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50985,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50967,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50966,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50969,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50968,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50965,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50967,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50868,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50867,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800098,0,50866,0,0,0);


DELETE FROM `quest_template` WHERE  `id` = 900001;
DELETE FROM `quest_template_addon` WHERE `id` = 900001;
DELETE FROM `creature_questender` WHERE `id` = 800066 AND `quest` = 900001;
DELETE FROM `creature_queststarter` WHERE `id` = 32690   AND `quest` = 900001;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900001', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '0', 
/* RewardMoney`  */'10000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '38186',
/* RewardAmount1` */ '10',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Frohe Weihnachten',
/* LogDescription  */ 'Wir wuenschen dir eine Frohe Weihnacht',
/* QuestDescription   */'Viel Spass dir beim Weihnachtsevent. Erreiche das Ende und geniesse es.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900001,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
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
(800066, 900001);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(32690, 900001);

DELETE FROM `quest_template` WHERE  `id` = 800555;
DELETE FROM `quest_template_addon` WHERE `id` = 800555;
DELETE FROM `creature_questender` WHERE `id` = 800073 AND `quest` = 800555;
DELETE FROM `creature_queststarter` WHERE `id` = 800073   AND `quest` = 800555;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '800555', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700518',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Waffen',
/* LogDescription  */ 'Bringt mir 30 Waffen der Unterstuetzer.',
/* QuestDescription   */'Hallo $N, ich moechte diese Waffen haben. Bringt mir 30 Stueck und ihr bekommt 1 Abzeichen von Darkshadow.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700519',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'30',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */800555,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
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
(800073, 800555);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800073, 800555);


DELETE FROM `quest_template` WHERE  `id` = 800556;
DELETE FROM `quest_template_addon` WHERE `id` = 800556;
DELETE FROM `creature_questender` WHERE `id` = 800073 AND `quest` = 800556;
DELETE FROM `creature_queststarter` WHERE `id` = 800073   AND `quest` = 800556;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '800556', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700522',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Felicitas',
/* LogDescription  */ 'Entledigt euch dem Schmiedemeister',
/* QuestDescription   */'Hallo $N, ich moechte das ihr euch Schmiedemeister Garfrost entledigt!',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'36494',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '1',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */800556,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800555,
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
(800073, 800556);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800073, 800556);


REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700524, 12, 0, 'Lucions Waffe', 65153, 5, 73, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Das Blut des Verrats tropft hier hinab.', 0, 0, 0, 900829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);DELETE FROM `item_template` WHERE `entry` = 700523;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES ('700523', '12', '0', '-1', 'Wappenrock des Wandervolkes ', '32694', '7', '134221824', '0', '0', '0', '0', '4', '2047', '1791', '200', '1', '0', '0', '0', '0', '0', '1770', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Ihr tragt die Insignien des Wandervolkes', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '120', '0', '0', '2048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '0', '0', '0', '0', '0', '12340');
DELETE FROM `item_template` WHERE `entry` = 700525;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700525, 12, 0, 'Seltsames Fragment', 34382, 5, 73, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Etwas komisches scheint hier zu sein.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);


REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('28860', '700525', '0', '15', '0', '1', '3', '1', '3');DELETE FROM `creature_template` WHERE `entry` = 800102;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800102,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Fragen',
  /*  Subname */'',
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
  /* Scriptname  */'codenpc');
 


DELETE FROM `quest_template` WHERE  `id` = 800557;
DELETE FROM `quest_template_addon` WHERE `id` = 800557;
DELETE FROM `creature_questender` WHERE `id` = 800076 AND `quest` = 800557;
DELETE FROM `creature_queststarter` WHERE `id` = 800076   AND `quest` = 800557;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '800557', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-22',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700521',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die 6 Aeonen.',
/* LogDescription  */ 'Bringt mir die Aeonen von Feuer, Schatten, Leben, Erde, Luft und Wasser.',
/* QuestDescription   */'Hallo $N, moechtet ihr Euch etwas verdienen? Bringt mir 6 Aeonen von Feuer, Schatten, Leben, Erde, Luft und Wasser. Die Marken die ihr bekommt, sind wichtig fuer spaeter.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '36860',
/* RequiredItemId2`  */ '35627',
/* RequiredItemId3` */ '35624',
/* RequiredItemId4`   */'35623',
/* RequiredItemId5`  */ '35625',
/* RequiredItemId6`  */ '35622',
/* RequiredItemCount1   */'5',
/* RequiredItemCount2`  */ '5',
/* RequiredItemCount3`  */ '5',
/* RequiredItemCount4`   */'5',
/* RequiredItemCount5`   */'5',
/* RequiredItemCount6` */ '5',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */800557,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
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
(800076, 800557);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800076, 800557);DELETE FROM `quest_template` WHERE  `id` = 900820;
DELETE FROM `quest_template_addon` WHERE `id` = 900820;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900820;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900820;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900820', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'0', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Das Wandervolk ruft',
/* LogDescription  */ 'Ein neues Stueck Geschichte wird auf MMOwning geschrieben.',
/* QuestDescription   */'Hallo $N, zusammen gehen wir auf eine Reise durch die Welt von Azeroth. Es werden Euch Steine in den Weg gelegt werden, vielleicht werdet ihr verzweifeln. Aber der Weg lohnt sich.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900820,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900807,
  /*  NextQuestID  */900821,
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
(800087, 900820);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900820);DELETE FROM `quest_template` WHERE  `id` = 900821;
DELETE FROM `quest_template_addon` WHERE `id` = 900821;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900821;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900821;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900821', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'38186',
/* RewardChoiceItemQuantity1 */ '5',
/* RewardChoiceItemID2`  */'200000',
/* RewardChoiceItemQuantity2` */ '1',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Wer ist den nun Felicitas?',
/* LogDescription  */ 'Das kleine Geheimnis um Felicitas wird gelüftet werden.',
/* QuestDescription   */'Hallo $N, hast du dich nicht auch schonmal gefragt wer oder was Felicitas ist? Wenn ja wirst du der Antwort immer naeher kommen, wenn wir hier gemeinsam arbeiten. Bringt mir daher bitte 5 Marken von Felicitas. Diese koennt ihr ueber taegliche Quests erreichen, z.B hier beim Wandervolk.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700522',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'5',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900821,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900820,
  /*  NextQuestID  */900822,
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
(800087, 900821);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900821);DELETE FROM `quest_template` WHERE  `id` = 900822;
DELETE FROM `quest_template_addon` WHERE `id` = 900822;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900822;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900822;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900822', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'100000', 
/* RewardBonusMoney` */'100000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Weg beginnt.',
/* LogDescription  */ 'Geht zu Lucion dem Hochlord der Sammler.',
/* QuestDescription   */'Hallo $N, begeben wir uns auf den ersten Weg. Geht zu Lucion dem Hochlord der Sammler. Finden koennt ihr ihn an der Flussnabel, beim kleinen Lager des Wandervolkes.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900822,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900821,
  /*  NextQuestID  */900823,
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
(800055, 900822);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900822);DELETE FROM `quest_template` WHERE  `id` = 900823;
DELETE FROM `quest_template_addon` WHERE `id` = 900823;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900823;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900823;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900823', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'2000000', 
/* RewardBonusMoney` */'2000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Sammeln der Vorraete.',
/* LogDescription  */ 'Sammelt die unten angegeben Vorraete um die Reise fortzusetzen.',
/* QuestDescription   */'Hallo $N, fuer unsere beschwerliche Reise benoetigen wir Vorraete. Diese sind auf der Welt verstreut. Bitte besorgt sie uns, damit wir uns auf die folgenden Aufgaben vorbereiten koennen. ',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '35711',
/* RequiredItemId2`  */ '729',
/* RequiredItemId3` */ '38563',
/* RequiredItemId4`   */'6889',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'10',
/* RequiredItemCount2`  */ '20',
/* RequiredItemCount3`  */ '20',
/* RequiredItemCount4`   */'15',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900823,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900822,
  /*  NextQuestID  */900824,
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
(800055, 900823);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900823);DELETE FROM `quest_template` WHERE  `id` = 900824;
DELETE FROM `quest_template_addon` WHERE `id` = 900824;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900824;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900824;

Insert into `quest_template` VALUES (900824,2,80,80,-1,0,0,0,0,0,0,0,70,2000000,2000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Entledigen der Konkurrenz.','Wir muessen unsere Konkurrenz abschuettlen.','Hallo $N, unsere Konkurrenz holt auf. Diese Trolle, nun gut ich verkneife mir jedes Wort, schliesslich kaempfen wir ja gemeinsam gegen diese stinkenden Bestien. Aber unser Vorteil ist wichtiger. Toetet also Daakara! Jetzt sofort und fuer immer.','','Es ist Eure Sache was ihr tut.',23863,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900824,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900823,
  /*  NextQuestID  */900825,
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
(800055, 900824);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900824);DELETE FROM `quest_template` WHERE  `id` = 900825;
DELETE FROM `quest_template_addon` WHERE `id` = 900825;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900825;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900825;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900825', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'500000', 
/* RewardBonusMoney` */'500000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Fakten kennen.',
/* LogDescription  */ 'Hoert mir zu.',
/* QuestDescription   */'Hallo $N, ich muss euch etwas wichtiges erzaehlen bevor wir hier weitermachen koennen. Groot und Kraserius von den Sammlern verdaechtigen mich, das ich ein Verraeter sei und nicht im Interesse von uns handeln wuerde. Aber ich kann Euch versichern, dem ist nicht so. Es ist eher anders, die beiden betruegen uns und das gesamte Volk. Sie nutzen uns aus und berreichern sich selbst. Glaubt mir! Ich moechte nicht das auch ihr ausgenutzt werdet.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900825,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900824,
  /*  NextQuestID  */900826,
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
(800055, 900825);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900825);DELETE FROM `quest_template` WHERE  `id` = 900826;
DELETE FROM `quest_template_addon` WHERE `id` = 900826;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900826;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900826;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900826', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'-1000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Wir brauchen mehr Materialien.',
/* LogDescription  */ 'Besorgt mir mehr Materialien. Ich brauche diese.',
/* QuestDescription   */'Hallo $N, diese glitzernden Gegenstaende wie Gold, Silber. Ich brauche sie, ich will sie haben. Oh aber natuerlich bekommt ihr euren Teil der Beute ab. Nur wie viel das wolllen wir nochmal ueberdenken. Sammelt also fuer mich die nachfolgenden Dinge.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '37921',
/* RequiredItemId2`  */ '44128',
/* RequiredItemId3` */ '37663',
/* RequiredItemId4`   */'3577',
/* RequiredItemId5`  */ '41163',
/* RequiredItemId6`  */ '3577',
/* RequiredItemCount1   */'100',
/* RequiredItemCount2`  */ '25',
/* RequiredItemCount3`  */ '10',
/* RequiredItemCount4`   */'50',
/* RequiredItemCount5`   */'30',
/* RequiredItemCount6` */ '30',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900826,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900825,
  /*  NextQuestID  */900827,
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
(800055, 900826);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900826);DELETE FROM `quest_template` WHERE  `id` = 900827;
DELETE FROM `quest_template_addon` WHERE `id` = 900827;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900827;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900827;

Insert into `quest_template` VALUES (900827,2,80,80,-1,0,0,0,0,0,0,0,70,1500000,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Die Raren sind die Wichtigen.','Wer hat nicht gerne seltene Dinge?','Hallo $N, ein weiteres Mal habe ich seltene Dinge ausgemacht, die von grossem Wert sind. Bitte seid so gut und bringt sie mir. Ich entschuldige mich fuer die vorrangegangene Abzocke. Es wird nicht mehr passieren.','','Es ist Eure Sache was ihr tut.',448,520,32495,18733,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900827,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900826,
  /*  NextQuestID  */900828,
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
(800055, 900827);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900827);DELETE FROM `quest_template` WHERE  `id` = 900828;
DELETE FROM `quest_template_addon` WHERE `id` = 900828;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900828;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900828;

Insert into `quest_template` VALUES (900828,62,80,80,-1,0,0,0,0,0,0,0,70,3000000,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Brutaler als Brutallus?','Geht hin und bringt Brutallus zur Strecke.','Hallo $N, ich hoffe ihr seid mir nicht mehr abgeneigt und wohlgesonnener nach meinem Geschenk an euch. Toetet also Brutallus im Sonnenbrunnenplateau um mir zu beweisen das ihr treu zu mir steht.','','Es ist Eure Sache was ihr tut.',24882,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900828,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900827,
  /*  NextQuestID  */900829,
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
(800055, 900828);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900828);DELETE FROM `quest_template` WHERE  `id` = 900829;
DELETE FROM `quest_template_addon` WHERE `id` = 900829;
DELETE FROM `creature_questender` WHERE `id` = 900829 AND `quest` = 900829;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900829', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'200000', 
/* RewardBonusMoney` */'200000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Bericht an Indomata.',
/* LogDescription  */ 'Geht zu Indomata und berichtet.',
/* QuestDescription   */'Hallo $N, dieser feige Verrat war nicht vorherzusehen. Geht zu Indomata und berichtet ihm davon.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '0',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900829,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900828,
  /*  NextQuestID  */900830,
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
(800087, 900829);DELETE FROM `quest_template` WHERE  `id` = 900830;
DELETE FROM `quest_template_addon` WHERE `id` = 900830;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900830;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900830;

Insert into `quest_template` VALUES (900830,2,80,80,-1,0,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachefeldzug beginnt.','Toetet den Geisselfuerst Tyrannus.','Hallo $N, Ich finde keine Worte. Fuehrt den Auftrag aus und kommt zurueck wenn ihr fertig seid!','','Es ist Eure Sache was ihr tut.',36658,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900830,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900829,
  /*  NextQuestID  */900831,
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
(800087, 900830);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900830);DELETE FROM `quest_template` WHERE  `id` = 900831;
DELETE FROM `quest_template_addon` WHERE `id` = 900831;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900831;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900831;

Insert into `quest_template` VALUES (900831,2,80,80,-1,0,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachfeldzug geht weiter.','Toetet den Verschlinger der Seelen.','Hallo $N, nachdem nun der erste Intrigant gefallen ist, wollen wir uns den Naechsten vorknoepfen. Toetet den Verschlinger der Seelen.','','Es ist Eure Sache was ihr tut.',36502,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900831,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900830,
  /*  NextQuestID  */900832,
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
(800087, 900831);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900831);DELETE FROM `quest_template` WHERE  `id` = 900832;
DELETE FROM `quest_template_addon` WHERE `id` = 900832;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900832;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900832;

Insert into `quest_template` VALUES (900832,2,80,80,-1,62,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachfeldzug spitzt sich zu.','Toetet Hochnethermant Zerevor.','Hallo $N, der Hochnethermant ist eine fuehrende Person der Marionetten in diesem Spiel aber nicht die wahre Bedrohung. Dennoch muss er ausgeschaltet werden. Geht also hin und besiegt den Rat der Illidari im Schwarzen Tempel im Schattenmondtal. Bringt mir dazu noch 30 Male der Illidari.','','Es ist Eure Sache was ihr tut.',22950,0,0,0,1,0,0,0,32897,0,0,0,0,0,30,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900832,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900831,
  /*  NextQuestID  */900833,
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
(800087, 900832);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900832);DELETE FROM `quest_template` WHERE  `id` = 900833;
DELETE FROM `quest_template_addon` WHERE `id` = 900833;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900833;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900833;

Insert into `quest_template` VALUES (900833,2,80,80,-1,62,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Einhalt muss geboten werden.','Toetet Satharion im Obsidiansanktum.','Hallo $N, Satharion ein maechtiger Drache muss getoetet werden. Durchforstet seinen Leichnam nach einem komischen Objekt und bringt es mir. Beeilt Euch!','','Es ist Eure Sache was ihr tut.',28860,0,0,0,1,0,0,0,33470,700525,0,0,0,0,100,1,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900833,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900831,
  /*  NextQuestID  */900833,
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
(800087, 900833);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900833);DELETE FROM `quest_template` WHERE  `id` = 900834;
DELETE FROM `quest_template_addon` WHERE `id` = 900834;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900834;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900834;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900834', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'500000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Entspannung fuer Indomata.',
/* LogDescription  */ 'Besorgt mit beruhigendes Gift II damit ich mich wieder beruhigen kann.',
/* QuestDescription   */'Hallo $N, die ganze Rache ist mir ueber den Kopf gewachsen. Bringt mir bitte 10 beruhigendes Gift II, damit ich wieder ruhig bin.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '43237',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'10',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900834,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900833,
  /*  NextQuestID  */900835,
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
(800087, 900834);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900834);DELETE FROM `quest_template` WHERE  `id` = 900835;
DELETE FROM `quest_template_addon` WHERE `id` = 900835;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900835;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900835;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900835', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'500000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Statusbericht.',
/* LogDescription  */ 'Bringt Janarius meinen Bericht.',
/* QuestDescription   */'Hallo $N, bringt Janarius beim Wandervolk bitte meinen Spionbericht. Er befindet sich auf der Hauptplattform des Wandervolkes.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '5917',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'1',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900835,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900834,
  /*  NextQuestID  */900836,
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
(800085, 900835);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900835);DELETE FROM `quest_template` WHERE  `id` = 900836;
DELETE FROM `quest_template_addon` WHERE `id` = 900836;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900836;
DELETE FROM `creature_queststarter` WHERE `id` = 800085   AND `quest` = 900836;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900836', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'500000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Der Vertrauensbeweis.',
/* LogDescription  */ 'Bringt mir 5 Wandervolkmarken.',
/* QuestDescription   */'Hallo $N, es ist ja gut das Euch Indomata vertraut. Aber ich bin Indomata. Ich moechte das ihr mir zeigt das ihr Euch fuer die Sache einsetzt. Bringt mir daher 5 Wandervolkmarken.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700521',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'5',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900836,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900835,
  /*  NextQuestID  */900837,
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
(800085, 900836);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800085, 900836);DELETE FROM `quest_template` WHERE  `id` = 900837;
DELETE FROM `quest_template_addon` WHERE `id` = 900837;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900837;
DELETE FROM `creature_queststarter` WHERE `id` = 800085   AND `quest` = 900837;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900837', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Verzauberung.',
/* LogDescription  */ 'Bringt mir Arkanen Staub, Tiefenkristalle, Schleierstaub sowie grosse Prismasplitter.',
/* QuestDescription   */'Hallo $N, da wir einige Verraeter identifizieren konnten, muesst ihr mir einige Dinge bringen. Einen davon haben wir zum Tode verurteilt. Bringt mir Arkanen Staub, Tiefenkristalle, Schleierstaub sowie grosse Prismasplitter. Damit werde ich den Verraeter verzaubern koennen und seine Todesstrafe wird vollstreckt werden.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '22445',
/* RequiredItemId2`  */ '34057',
/* RequiredItemId3` */ '34054',
/* RequiredItemId4`   */'22449',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'15',
/* RequiredItemCount2`  */ '5',
/* RequiredItemCount3`  */ '20',
/* RequiredItemCount4`   */'5',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900837,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900836,
  /*  NextQuestID  */900838,
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
(800085, 900837);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800085, 900837);DELETE FROM `quest_template` WHERE  `id` = 900838;
DELETE FROM `quest_template_addon` WHERE `id` = 900838;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900838;
DELETE FROM `creature_queststarter` WHERE `id` = 800085   AND `quest` = 900838;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900838', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Steinigung.',
/* LogDescription  */ 'Bringt mir Verdichtete Steine, robuste Steine, schwere Steine sowie Raue Steine.',
/* QuestDescription   */'Hallo $N, die Verzauberung war erfolgreich. Daher tritt nun die naechste Stufe in Kraft. Bringt mir Verdichtete Steine, robuste Steine, schwere Steine sowie Raue Steine. Wir werden den Verraeter nun steinigen. ',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '12365',
/* RequiredItemId2`  */ '7912',
/* RequiredItemId3` */ '2838',
/* RequiredItemId4`   */'2835',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'15',
/* RequiredItemCount2`  */ '15',
/* RequiredItemCount3`  */ '15',
/* RequiredItemCount4`   */'15',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900838,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900837,
  /*  NextQuestID  */900839,
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
(800085, 900838);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800085, 900838);DELETE FROM `quest_template` WHERE  `id` = 900839;
DELETE FROM `quest_template_addon` WHERE `id` = 900839;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900839;
DELETE FROM `creature_queststarter` WHERE `id` = 800085   AND `quest` = 900839;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900839', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Einbalsamierung.',
/* LogDescription  */ 'Bringt mir Frostlotus, Goldklee, Silberblatt, Teufelsgras.',
/* QuestDescription   */'Hallo $N, der Verraeter wurde erfolgreich liqiudiert. Bringt mir Frostlotus, Goldklee, Silberblatt, Teufelsgras. Wir werden ihn nun einbalsamieren damit sein Koerper auf ewig auf dieser Welt verweilen muss.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '36908',
/* RequiredItemId2`  */ '765',
/* RequiredItemId3` */ '36901',
/* RequiredItemId4`   */'22785',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'10',
/* RequiredItemCount2`  */ '20',
/* RequiredItemCount3`  */ '10',
/* RequiredItemCount4`   */'10',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900839,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900838,
  /*  NextQuestID  */900840,
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
(800085, 900839);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800085, 900839);DELETE FROM `quest_template` WHERE  `id` = 900840;
DELETE FROM `quest_template_addon` WHERE `id` = 900840;
DELETE FROM `creature_questender` WHERE `id` = 800085 AND `quest` = 900840;
DELETE FROM `creature_queststarter` WHERE `id` = 800085   AND `quest` = 900840;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '900840', 
/* TYPE  */ '83',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'2000000', 
/* RewardBonusMoney` */'0',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '0',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '0',
/* RewardAmount1` */ '0',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Mumifizierung.',
/* LogDescription  */ 'Bringt mir Frostoff, Netherstoff, Arktische Pelze sowie Boreanisches Leder.',
/* QuestDescription   */'Hallo $N, der Verraeter wurde erfolgreich einbalsamiert.Bringt mir Frostoff, Netherstoff, Arktische Pelze sowie Boreanisches Leder damit wir den Leichnam nun einwickeln koennen und somit schuetzen koennen. Die Mumifizierung muss erfolgreich sein! Vielleicht entdecken wird ja etwas in seinem Koerper, das uns weiterbringt um der Verschwoerung auf die Spur zu kommen.',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '33470',
/* RequiredItemId2`  */ '21877',
/* RequiredItemId3` */ '44178',
/* RequiredItemId4`   */'33568',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'50',
/* RequiredItemCount2`  */ '30',
/* RequiredItemCount3`  */ '25',
/* RequiredItemCount4`   */'20',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900840,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900839,
  /*  NextQuestID  */900841,
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
(800085, 900840);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800085, 900840);

