DELETE FROM `item_template` WHERE `entry` = 700509;

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700509, 12, 0, 'Kayoulas Schmuckstück', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, "Es strahlt Liebe aus", 0, 0, 0, 0, 4);DELETE FROM `creature_template` WHERE `entry` = 60003;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 60003,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning Event',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */60003,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */0,
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
  /* Scriptname  */'eventnpc');
  
DELETE FROM `creature` WHERE `id` = 60003;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('500997','60003','0','1','1','17072','0','-8791.39','640.36','94.46','3.77','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('500998','60003','1','1','1','17072','0','1673.34','-4368.23','29.29','4.23','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('500999','60003','0','1','1','17072','0','-9776.96','2103.02','11.58','2.75','25','0','0','1000000','250000','0');






DELETE FROM `creature_template` WHERE `entry` = 800035;
DELETE FROM `creature_loot_template` WHERE `Entry` = 800035;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 38186, 0, 25, 0, 1, 0, 2, 5);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37258, 0, 20, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37256, 0, 20, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37257, 0, 20, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37255, 0, 20, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37363, 0, 20, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37261, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37262, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37263, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37260, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37361, 0, 20, 0, 1, 2, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37362, 0, 33.3, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37364, 0, 33.3, 0, 1, 3, 1, 1);
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800035, 37360, 0, 33.3, 0, 1, 3, 1, 1);




DELETE FROM `creature_template` WHERE `entry` = 800035;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800035,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */21601,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Arcturus',
  /* Subname */'Herrscher der Kälte',
  /* Iconname */'',
  /* gossip_menu_id`  */800035,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */1,
  /* speedrun */ 1.14286,
  /* scale */1,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800035,
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
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');


REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800035','800035','571','1','1','21601','-1','2979.50','-5771.17','258.16','3.377','20000','0','0','1000000000','25000000','1');

UPDATE `creature_template` SET `HealthModifier`='1000', `ArmorModifier`='80', `DamageModifier`='100' WHERE `entry`='800035';

DELETE FROM `creature_text` WHERE `entry`=800035;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,1,0,'Ihr kleinen Wichte. Spürt meine Kälte',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,2,0,'Hier gibt es nichts als Schmerz für Euch',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,3,0,'Keine Spielchen jetzt! Sterbt!',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,7,0,'Eine Trophäe mehr an meiner Wand!',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,4,0,'Phase 1',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,5,0,'Phase 2',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800035,6,0,'Phase 3',41,0,100,5,0,0,'Comment');

-- Arcturus
SET @ENTRY := 800035;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,2,0,100,1,5,6,0,0,11,71049,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Blistering_Cold1"),
(@ENTRY,@SOURCETYPE,1,0,2,0,100,0,25,30,25000,35000,11,69649,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Frost_Breath"),
(@ENTRY,@SOURCETYPE,2,0,2,0,40,0,60,95,1000,5000,11,63757,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Thunder_Clap_Phase_1"),
(@ENTRY,@SOURCETYPE,3,0,2,0,100,1,1,10,0,0,11,68335,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage_@_10%"),
(@ENTRY,@SOURCETYPE,4,0,2,0,100,1,3,4,0,0,11,71049,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Blistering_Cold2"),
(@ENTRY,@SOURCETYPE,5,0,2,0,100,1,1,2,0,0,11,71049,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Blistering_Cold3"),
(@ENTRY,@SOURCETYPE,6,0,2,0,60,0,31,60,5500,7500,11,70399,2,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Ice_Spike"),
(@ENTRY,@SOURCETYPE,7,0,2,0,100,1,99,100,0,0,1,1,1,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"yell_1"),
(@ENTRY,@SOURCETYPE,8,0,2,0,100,1,55,60,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_2"),
(@ENTRY,@SOURCETYPE,9,0,2,0,100,1,5,10,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_3"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,99,100,0,0,1,4,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"emote_1"),
(@ENTRY,@SOURCETYPE,11,0,2,0,100,1,59,60,0,0,1,5,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"emote_2"),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,1,29,31,0,0,1,6,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"emote_3"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,0,35,60,15000,20000,11,63757,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Thunder_Clap_Phase_2"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,0,10,30,15000,20000,11,63757,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Thunder_Clap_Phase_3"),
(@ENTRY,@SOURCETYPE,15,0,5,0,100,1,10,1,0,0,1,7,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"on_kill");/*Boss Nerubischer Kommandant */

DELETE FROM `creature_loot_template` WHERE `Entry` = 800036;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 45624, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 49426, 0, 100, 0, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 38186, 0, 1, 0, 1, 0, 1, 3);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37217, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37216, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37257, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37255, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 21524, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 21525, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37361, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37362, 0, 25, 0, 1, 2, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37364, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 37290, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 40511, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800036, 40489, 0, 25, 0, 1, 3, 1, 1); 




DELETE FROM `creature` WHERE `guid` = 800036;

REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800036','800036','571','1','1','27394','-1','3486.27','-691.05','369.14','3.81','20000','0','0','1000000000','25000000','1');

DELETE FROM `creature_template` WHERE `entry` = 800036;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800036,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27394,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Nerubischer Kommandant',
  /*  Subname */'Diener eines Herrschers',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */83,
  /* Max Level  */83,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */2,
 /*  speedrun */ 2.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */4000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */7,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */800036,
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
  /* mingold`  */8000000, 
  /* MaxGold  */9000000, 
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
UPDATE `creature_template` SET `HealthModifier`='1000', `ArmorModifier`='10', `DamageModifier`='40' WHERE `entry`='800036';

  
  
DELETE FROM `creature_text` WHERE `entry`=800036;
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,1,0,'Wer möchte gegen mich bestehen?',14,0,100,1,0,17457,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,2,0,'Ihr Wenigen wollt gegen mich standhalten?',14,0,100,1,0,17458,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,3,0,'Ahh sehr schön. Unterstützung.',14,0,100,1,0,17459,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,4,0,'Merkt Euch meine Worte!',14,0,100,1,0,17460,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,7,0,'Ich .... kann ...nicht tot sein. Arrgh Ich komme wieder!',14,0,100,1,0,17460,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,5,0,'Erzittert vor meiner Angst',41,0,100,1,0,0,'Comment');
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800036,6,0,'Und es wird schlimmer',41,0,100,1,0,0,'Comment');

SET @ENTRY := 800036;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  1,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */10,
/* event_param2  */60,
/* event_param3  */12000,
/* event_param4  */13000,
/* action_type   */11,
/* action_param1 */74398,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Summon"),

/* SAY */
(@ENTRY,@SOURCETYPE,/*  id */14,/* link  */0,/* event_type*/2,/* event_phase_mask */0,/* event_chance  */100,/* event_flags  */1,/* event_param1 */60,/* event_param2  */95,/* event_param3   */0,/* event_param4 */0,/* action_type  */1,/*ActionType 1*/1,/* action_param2 */0,/* action_param3 */0,/* action_param4 */0,/* action_param5 */0,/* action_param6 */0,/* target_type  */2,/* target_param1 */0,/* target_param2*/0,/* target_param3  */0,/* target_x  */0.0,/* target_y   */0.0,/* target_z  */0.0,/* target_o */0.0,/* comment  */"Yell 1"),

(@ENTRY,@SOURCETYPE,2,0,2,0,100,0,75,80,10000,13000,11,/*58907*/0,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FEAR"),
(@ENTRY,@SOURCETYPE,3,0,2,0,100,1,60,70,0,0,11,/*70821*/0,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FRENZY"),
(@ENTRY,@SOURCETYPE,4,0,2,0,100,0,50,60,7000,8000,11,/*72999*/0,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"CHAIN_LIGHTNING"),
(@ENTRY,@SOURCETYPE,5,0,2,0,100,1,40,50,0,0,11,/*71405*/71363,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SPELL_SUMMON_SHADE"),
(@ENTRY,@SOURCETYPE,8,0,2,0,100,0,10,20,6000,7000,11,/*69108*/72451,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SPELL_MUTATED_PLAGUE"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,1,10,0,0,11,683350,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage at 10%"),
(@ENTRY,@SOURCETYPE,11,0,2,0,100,0,80,90,10000,69140,11,5649,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Stunning Blast "),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,0,1,100,0,0,11,66046,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Shield Block"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,0,1,10,9000,10000,11,71255,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLIZZARD"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,1,60,95,0,0,1,1,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 1"),
(@ENTRY,@SOURCETYPE,15,0,2,0,100,1,75,80,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 2"),
(@ENTRY,@SOURCETYPE,16,0,2,0,100,1,20,30,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 3"),
(@ENTRY,@SOURCETYPE,17,0,2,0,100,1,1,5,0,0,1,4,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 4"),
(@ENTRY,@SOURCETYPE,18,0,2,0,100,1,90,100,0,0,11,/*54237*/0,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Dark Barrage"),
(@ENTRY,@SOURCETYPE,19,0,2,0,100,0,80,87,12000,13000,11,68989,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Knochenstachel"),
(@ENTRY,@SOURCETYPE,20,0,2,0,100,1,70,80,0,0,11,59971,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Rain of Fire"),
(@ENTRY,@SOURCETYPE,21,0,2,0,100,1,60,70,15000,18000,11,70492,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Draw Soul"),
(@ENTRY,@SOURCETYPE,22,0,2,0,100,0,50,60,8000,9000,11,41131,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Flame Burst"),
(@ENTRY,@SOURCETYPE,23,0,2,0,100,0,40,50,13000,15000,11,41545,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Soul Scream"),
(@ENTRY,@SOURCETYPE,24,0,2,0,100,1,55,100,0,0,1,5,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 5"),
(@ENTRY,@SOURCETYPE,25,0,2,0,100,1,1,50,0,0,1,6,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 6"),
(@ENTRY,@SOURCETYPE,27,0,2,0,100,0,25,35,8000,9000,11,/*68989*/0,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Knochenstachel"),
(@ENTRY,@SOURCETYPE,28,0,2,0,100,0,20,30,8000,9000,11,56431,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Arcane Bomb"),
(@ENTRY,@SOURCETYPE,30,0,2,0,100,1,1,0,0,0,1,7,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 5"),
(@ENTRY,@SOURCETYPE,32,0,25,0,100,0,0,0,0,0,41,/*58907*/1000,0,0,0,0,0,9,39814,0,5000,0.0,0.0,0.0,0.0,"FEAR"),
(@ENTRY,@SOURCETYPE,35,0,2,0,100,0,10,20,12000,13000,11,68989,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Knochenstachel"),
(@ENTRY,@SOURCETYPE,33,0,0,0,100,0,1,100,25000,35000,11,74367,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Rüstung_spalten"),
(@ENTRY,@SOURCETYPE,
/*  id */  34,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */10,
/* event_param2  */60,
/* event_param3  */12000,
/* event_param4  */13000,
/* action_type   */11,
/* action_param1 */74398,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Summon"),
(@ENTRY,@SOURCETYPE,31,0,2,0,100,0,5,10,8000,9000,11,72934,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Sartahrion"),
(@ENTRY,@SOURCETYPE,
/*  id */  36,
/* link  */0,
/* event_type*/5,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */10,
/* event_param3   */1,
/* event_param4 */0,
/* action_type  */11,
/* action_param1 */74398,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"Summon"),
(@ENTRY,@SOURCETYPE,31,0,2,0,100,0,5,10,8000,9000,11,56910,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Sartahrion");








DELETE FROM `creature_template` WHERE `entry` = 800037;
DELETE FROM `creature_loot_template` WHERE `Entry` = 800037;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 38186, 0, 1, 0, 1, 0, 15, 50);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47850, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47853, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47851, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47856, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47910, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47896, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47894, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47646, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800037, 47629, 0, 20, 0, 1, 2, 1, 1); 

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800037,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */17894,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Kayoula',
  /* Subname */'Exitares verschollene Frau',
  /* Iconname */'',
  /* gossip_menu_id`  */800037,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */1,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800037,
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
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');




UPDATE `creature_template` SET `HealthModifier`='5500', `ArmorModifier`='200', `DamageModifier`='160' WHERE `entry`='800037';

 REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800037','800037','530','1','1','17894','0','-2743.78','503.41','-26.74','2.46','250000','0','0','1000000','250000','0');



DELETE FROM `creature_text` WHERE `entry`=800037;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,1,0,'Oh schön. Neue Kundschaft.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,2,0,'Hahaha. Ihr kitzelt mich.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,3,0,'Ihr müsst viel lernen.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,4,0,'Habt ihr niemand anderen, dem ihr auf die Nerven gehen könnt?',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,5,0,'Phase 1',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,6,0,'Phase 2',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800037,7,0,'Phase 3',41,0,100,5,0,0,'Comment');


SET @ENTRY := 800037;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  1,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */95,
/* event_param2  */100,
/* event_param3   */12000,
/* event_param4 */13000,
/* action_type  */11,
/* action_param1 */69021,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */2,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_MIGHTY_KICK"),

(@ENTRY,@SOURCETYPE,
/*  id */  2,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */20,
/* event_param2  */80,
/* event_param3   */5000,
/* event_param4 */13000,
/* action_type  */11,
/* action_param1 */70381,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */3,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_DEEP_FREEZE "),

(@ENTRY,@SOURCETYPE,
/*  id */  3,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */10,
/* event_param2  */95,
/* event_param3   */5000,
/* event_param4 */13000,
/* action_type  */11,
/* action_param1 */66824,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */2,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_PARALYTIC_BITE "),


(@ENTRY,@SOURCETYPE,
/*  id */  4,
/* link  */0,
/* event_type*/5,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */10,
/* event_param3   */1,
/* event_param4 */0,
/* action_type  */11,
/* action_param1 */74398,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"Summon"),


(@ENTRY,@SOURCETYPE,
/*  id */  5,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */80,
/* event_param2  */81,
/* event_param3   */8000,
/* event_param4 */15000,
/* action_type  */11,
/* action_param1 */69845,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_BOMB"),

(@ENTRY,@SOURCETYPE,
/*  id */  6,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */70,
/* event_param2  */80,
/* event_param3   */8000,
/* event_param4 */13000,
/* action_type  */11,
/* action_param1 */62522,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_ELECTROSHOCK"),

(@ENTRY,@SOURCETYPE,7,0,2,0,100,1,99,100,0,0,1,1,1,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"yell_1"),
(@ENTRY,@SOURCETYPE,8,0,2,0,100,1,55,60,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_2"),
(@ENTRY,@SOURCETYPE,9,0,2,0,100,1,5,10,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_3"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,35,40,0,0,1,4,1,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"yell_4"),

(@ENTRY,@SOURCETYPE,
/*  id */  11,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */20,
/* event_param2  */80,
/* event_param3   */8000,
/* event_param4 */13000,
/* action_type  */11,
/* action_param1 */69024,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_TOXIC_WASTE"),

(@ENTRY,@SOURCETYPE,
/*  id */  12,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60,
/* event_param2  */61,
/* event_param3   */8000,
/* event_param4 */15000,
/* action_type  */11,
/* action_param1 */69845,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_BOMB"),


(@ENTRY,@SOURCETYPE,
/*  id */  13,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */40,
/* event_param2  */41,
/* event_param3   */8000,
/* event_param4 */15000,
/* action_type  */11,
/* action_param1 */69845,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_BOMB"),


(@ENTRY,@SOURCETYPE,
/*  id */  14,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */20,
/* event_param2  */21,
/* event_param3   */8000,
/* event_param4 */15000,
/* action_type  */11,
/* action_param1 */69845,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_BOMB"),

(@ENTRY,@SOURCETYPE,
/*  id */  15,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */ 10,
/* event_param2  */ 11,
/* event_param3   */8000,
/* event_param4 */15000,
/* action_type  */11,
/* action_param1 */69845,
/* action_param2 */1,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_BOMB"),

(@ENTRY,@SOURCETYPE,
/*  id */  16,
/* link  */0,
/* event_type*/5,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */10,
/* event_param3   */1,
/* event_param4 */0,
/* action_type  */11,
/* action_param1 */74398,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"Summon"),


(@ENTRY,@SOURCETYPE,
/*  id */  17,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */40,
/* event_param2  */80,
/* event_param3   */25000,
/* event_param4 */30000,
/* action_type  */11,
/* action_param1 */74398,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */2,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"Summon");




DELETE FROM `creature_template` WHERE `entry` = 800038;
DELETE FROM `creature_loot_template` WHERE `Entry` = 800038;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 49284, 0, 0.1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 21176, 0, 0.1, 0, 1, 0, 1, 1);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 47617, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 47649, 0, 25,0, 1, 1, 1, 1);
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 47630, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 49908, 0, 25, 0, 1, 1, 1, 4); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 56806, 0, 0.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 49426, 0, 33, 0, 1, 2, 1, 2); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 47241, 0,33.5, 0, 1, 2, 1, 3); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 36928, 0, 33, 0, 1, 2, 3, 5); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 51336, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 51358, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 51377, 0, 25, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800038, 51378, 0, 25, 0, 1, 3, 1, 1); 

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800038,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */20512,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Tempus Schatten',
  /* Subname */'',
  /* Iconname */'',
  /* gossip_menu_id`  */800038,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */1,
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
  /* lootid */800038,
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
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');




UPDATE `creature_template` SET `HealthModifier`='3800', `ArmorModifier`='20', `DamageModifier`='120' WHERE `entry`='800038';

 REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800038','800038','1','1','1','20512','0','-8117.64','1605.21','13.99','6.25','250000','0','0','1000000','250000','0');



DELETE FROM `creature_text` WHERE `entry`=800038;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,1,0,'Willkommen! Ich habe Euch erwartet.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,2,0,'Eine nette kleine Runde hier. Fast wie damals.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,3,0,'Wer ist euer Anführer?',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,4,0,'Ihr seid so erbärmlich',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,5,0,'Phase 1',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,6,0,'Phase 2',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800038,7,0,'Phase 3',41,0,100,5,0,0,'Comment');


SET @ENTRY := 800038;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  1,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */95,
/* event_param2  */100,
/* event_param3  */12000,
/* event_param4  */13000,
/* action_type   */11,
/* action_param1 */53210,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Apocalyspe"),

/* SAY */
(@ENTRY,@SOURCETYPE,/*  id */14,/* link  */0,/* event_type*/2,/* event_phase_mask */0,/* event_chance  */100,/* event_flags  */1,/* event_param1 */60,/* event_param2  */95,/* event_param3   */0,/* event_param4 */0,/* action_type  */1,/*ActionType 1*/1,/* action_param2 */0,/* action_param3 */0,/* action_param4 */0,/* action_param5 */0,/* action_param6 */0,/* target_type  */2,/* target_param1 */0,/* target_param2*/0,/* target_param3  */0,/* target_x  */0.0,/* target_y   */0.0,/* target_z  */0.0,/* target_o */0.0,/* comment  */"Yell 1"),


(@ENTRY,@SOURCETYPE,4,0,2,0,100,0,50,60,7000,8000,11,40504,2,0,0,0,0,6,0,0,0,0.0,0.0,0.0,0.0,"Ruby"),
(@ENTRY,@SOURCETYPE,5,0,2,0,100,0,40,50,0,0,11,70123,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLISTERING_COLD"),
(@ENTRY,@SOURCETYPE,8,0,0,0,100,0,1,100,10000,15000,11,74367,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Rüstung_spalten"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,1,8,0,0,11,68335,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage_@_8%"),
(@ENTRY,@SOURCETYPE,11,0,2,0,100,0,70,75,10000,69140,11,72363,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SPELL_CORRUPTED_FLESH"),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,1,30,40,0,0,11,40504,2,0,0,0,0,6,0,0,0,0.0,0.0,0.0,0.0,"Ruby"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,0,1,10,9000,10000,11,70123,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLISTERING_COLD"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,1,60,95,0,0,1,1,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 1"),
(@ENTRY,@SOURCETYPE,15,0,2,0,100,1,75,80,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 2"),
(@ENTRY,@SOURCETYPE,16,0,2,0,100,1,20,30,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 3"),
(@ENTRY,@SOURCETYPE,17,0,2,0,100,1,1,5,0,0,1,4,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 4"),
(@ENTRY,@SOURCETYPE,18,0,2,0,100,1,90,100,8000,13000,11,68982,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Phantomschlag"),
(@ENTRY,@SOURCETYPE,19,0,2,0,100,0,80,87,12000,13000,11,70425,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Kettenblitz"),
(@ENTRY,@SOURCETYPE,20,0,0,0,100,1,60,70,45000,60000,11,74398,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Summon"),
(@ENTRY,@SOURCETYPE,21,0,2,0,100,1,60,70,15000,18000,11,40504,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Ruby"),
(@ENTRY,@SOURCETYPE,22,0,2,0,100,0,50,60,8000,9000,11,40504,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Ruby"),
(@ENTRY,@SOURCETYPE,23,0,2,0,100,0,40,50,13000,15000,11,49034,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SPELL_BLIZZARD"),
(@ENTRY,@SOURCETYPE,32,0,2,0,100,0,1,10,13000,15000,11,36911,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Eisblock"),
(@ENTRY,@SOURCETYPE,24,0,2,0,100,1,55,100,0,0,1,5,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 5"),
(@ENTRY,@SOURCETYPE,25,0,2,0,100,1,1,50,0,0,1,6,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 6"),
(@ENTRY,@SOURCETYPE,27,0,2,0,100,0,1,5,8000,9000,11,26662,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"SPELL_BERSERK"),
(@ENTRY,@SOURCETYPE,28,0,2,0,100,0,20,30,8000,9000,11,59658,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Argentumsheldentum"),
(@ENTRY,@SOURCETYPE,31,0,2,0,100,0,5,10,30000,35000,11,41367,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Gotteschild"),
(@ENTRY,@SOURCETYPE,
/*  id */  32,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */50,
/* event_param2  */51,
/* event_param3  */12000,
/* event_param4  */13000,
/* action_type   */11,
/* action_param1 */53210,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Apocalyspe"),

(@ENTRY,@SOURCETYPE,
/*  id */  33,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */32,
/* event_param2  */35,
/* event_param3  */12000,
/* event_param4  */13000,
/* action_type   */11,
/* action_param1 */53210,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Apocalyspe"),

(@ENTRY,@SOURCETYPE,
/*  id */  34,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags   */0,
/* event_param1  */2,
/* event_param2  */6,
/* event_param3  */30000,
/* event_param4  */45000,
/* action_type   */11,
/* action_param1 */53210,
/* action_param2 */0,
/* action_param3 */0,
/* action_param4 */0,
/* action_param5 */0,
/* action_param6 */0,
/* target_type   */5,
/* target_param1 */0,
/* target_param2 */0,
/* target_param3 */0,
/* target_x  */0.0,
/* target_y  */0.0,
/* target_z  */0.0,
/* target_o  */0.0,
/* comment  */"Apocalyspe");
DELETE FROM `creature_template` WHERE `entry` = 800039;
DELETE FROM `creature_loot_template` WHERE `Entry` = 800039;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 38186, 0, 1, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47172, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47493, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47249, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47522, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47512, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47202, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47508, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800039, 47230, 0, 12.5, 0, 1, 2, 1, 1); 

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800039,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */16694,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Moon',
  /* Subname */'Die abtrünnige Sammlerin',
  /* Iconname */'',
  /* gossip_menu_id`  */800039,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */1,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800039,
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
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');




UPDATE `creature_template` SET `HealthModifier`='3500', `ArmorModifier`='70', `DamageModifier`='110' WHERE `entry`='800039';

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800039','800039','0','1','1','16694','0','-12535.60','-2674.06','89.30','6.18','250000','0','0','1000000','250000','0');



DELETE FROM `creature_text` WHERE `entry`=800039;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,1,0,'Die Sammler müssen vernichtet werden.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,2,0,'Niemand hat verdient am Leben zu bleiben',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,3,0,'Ich werde die Insel säubern.',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,4,0,'Habt ihr niemand anderen, dem ihr auf die Nerven gehen könnt?',14,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,5,0,'Phase 1',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,6,0,'Phase 2',41,0,100,5,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800039,7,0,'Phase 3',41,0,100,5,0,0,'Comment');


SET @ENTRY := 800039;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  1,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */95,
/* event_param2  */100,
/* event_param3   */20000,
/* event_param4 */25000,
/* action_type  */11,
/* action_param1 */30101,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FROST_MISSILE"),

(@ENTRY,@SOURCETYPE,
/*  id */  2,
/* link  */0,
/* event_type*/0,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */100,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */68839,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_CORRUPT_SOUL"),

(@ENTRY,@SOURCETYPE,
/*  id */  3,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */95,
/* event_param3   */15000,
/* event_param4 */20000,
/* action_type  */11,
/* action_param1 */18392,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_FIREBALL"),

(@ENTRY,@SOURCETYPE,
/*  id */  4,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60,
/* event_param2  */80,
/* event_param3   */30000,
/* event_param4 */65000,
/* action_type  */11,
/* action_param1 */37335,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */2,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_SHEAR"),


(@ENTRY,@SOURCETYPE,
/*  id */  5,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */75,
/* event_param3   */30000,
/* event_param4 */60000,
/* action_type  */11,
/* action_param1 */40276,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_VOLCANIC_SUMMON"),

(@ENTRY,@SOURCETYPE,
/*  id */  6,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */50,
/* event_param2  */65,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */55813,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */2,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_ECK_BITE"),


(@ENTRY,@SOURCETYPE,
/*  id */  7,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */20,
/* event_param2  */25,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */65874,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_DARK_SHIELD"),

(@ENTRY,@SOURCETYPE,
/*  id */  8,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */10,
/* event_param2  */45,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */69508,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */5,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_SLIME_SPRAY"),

(@ENTRY,@SOURCETYPE,
/*  id */  9,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */10,
/* event_param2  */70,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */72172,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_SUMMON_BLOOD_BEAST"),

(@ENTRY,@SOURCETYPE,
/*  id */  10,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */1,
/* event_param2  */10,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */70702,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_COLUMN_OF_FROST_DAMAGE"),

(@ENTRY,@SOURCETYPE,11,0,2,0,100,1,1,5,0,0,11,68335,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage_@_5%"),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,1,99,100,0,0,1,1,1,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"yell_1"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,1,55,60,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_2"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,1,5,10,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"yell_3"),
(@ENTRY,@SOURCETYPE,15,0,2,0,100,1,35,40,0,0,1,4,1,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"yell_4"),

(@ENTRY,@SOURCETYPE,
/*  id */  16,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */30,
/* event_param2  */70,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */72172,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_SUMMON_BLOOD_BEAST"),

(@ENTRY,@SOURCETYPE,
/*  id */  17,
/* link  */0,
/* event_type*/2,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */30,
/* event_param2  */70,
/* event_param3   */30000,
/* event_param4 */45000,
/* action_type  */11,
/* action_param1 */72172,
/* action_param2 */2,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */6,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */0.0,
/* target_y   */0.0,
/* target_z  */0.0,
/* target_o */0.0,
/* comment  */"SPELL_SUMMON_BLOOD_BEAST");

DELETE FROM `creature_template` WHERE `entry` = 800040;
DELETE FROM `creature_loot_template` WHERE `Entry` = 800040;


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 38186, 0, 1, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49323, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49327, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49318, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49316, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49320, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49296, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49305, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49303, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800040, 49437, 0, 12.5, 0, 1, 2, 1, 1); 



REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800040,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */24942,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Marltyriun',
  /* Subname */'Der Zerstörer',
  /* Iconname */'',
  /* gossip_menu_id`  */0,
  /* Min Level */80,
  /* Max Level  */80,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */2,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800040,
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
  /*  mingold`  */5000000, 
  /*  MaxGold  */ 9000000, 
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');



UPDATE `creature_template` SET `HealthModifier`='700', `ArmorModifier`='70', `DamageModifier`='110' WHERE `entry`='800040';
DELETE FROM `creature` WHERE `guid` = 800040;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800040','800040','0','1','1','24942','0','-11715.54','-3627.68','91.95','2.64','20000','0','0','1000000','250000','0');
  
 
DELETE FROM `creature_text` WHERE `entry`=800040;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,1,0,'Ihr Verräter. Loyalistenschweine.',14,0,100,1,0,17457,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,2,0,'Habt ihr nichts anderes zu tun?!!',14,0,100,1,0,17458,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,3,0,'Seid ihr so lumpig vorbereitet?!',14,0,100,1,0,17459,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,4,0,'Hört auf! Ich tue alles was ihr wollt.',14,0,100,1,0,17460,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,5,0,'Phase 1',41,0,100,1,0,0,'Comment');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800040,6,0,'Phase 2',41,0,100,1,0,0,'Comment');
 

SET @ENTRY := 800040;
SET @SOURCETYPE := 0;
 
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,0,0,2,0,100,0,90,100,12000,13000,11,46589,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SHADOW_SPIKE"),
(@ENTRY,@SOURCETYPE,2,0,2,0,100,0,75,80,10000,13000,11,68950,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FEAR"),
(@ENTRY,@SOURCETYPE,3,0,2,0,100,1,60,70,0,0,11,8269,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FRENZY"),
(@ENTRY,@SOURCETYPE,4,0,2,0,100,0,50,60,7000,8000,11,33665,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"CHAIN_LIGHTNING"),
(@ENTRY,@SOURCETYPE,5,0,2,0,100,1,40,50,0,0,11,71049,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLISTERING_COLD"),
(@ENTRY,@SOURCETYPE,8,0,2,0,100,0,10,20,6000,7000,11,40827,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SINBEAM"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,1,10,0,0,11,68335,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage at 10%"),
(@ENTRY,@SOURCETYPE,11,0,2,0,100,0,80,90,10000,13000,11,5649,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Stunning Blast "),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,1,30,40,0,0,11,2565,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Shield Block"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,0,1,10,9000,10000,11,26607,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLIZZARD"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,1,60,95,0,0,1,1,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 1"),
(@ENTRY,@SOURCETYPE,15,0,2,0,100,1,40,55,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 2"),
(@ENTRY,@SOURCETYPE,16,0,2,0,100,1,20,30,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 3"),
(@ENTRY,@SOURCETYPE,17,0,2,0,100,1,1,5,0,0,1,4,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 4"),
(@ENTRY,@SOURCETYPE,18,0,2,0,100,1,90,100,0,0,11,40585,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Dark Barrage"),
(@ENTRY,@SOURCETYPE,19,0,2,0,100,0,80,87,12000,13000,11,21066,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Void Bolt"),
(@ENTRY,@SOURCETYPE,20,0,2,0,100,1,70,80,0,0,11,59971,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Rain of Fire"),
(@ENTRY,@SOURCETYPE,21,0,2,0,100,1,60,70,15000,18000,11,40904,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Draw Soul"),
(@ENTRY,@SOURCETYPE,22,0,2,0,100,0,50,60,8000,9000,11,41131,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Flame Burst"),
(@ENTRY,@SOURCETYPE,23,0,2,0,100,0,40,50,13000,15000,11,41545,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Soul Scream"),
(@ENTRY,@SOURCETYPE,24,0,2,0,100,1,55,100,0,0,1,5,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 5"),
(@ENTRY,@SOURCETYPE,25,0,2,0,100,1,1,50,0,0,1,6,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 6"),
(@ENTRY,@SOURCETYPE,27,0,2,0,100,0,25,35,8000,9000,11,42052,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Volcanic Geyser"),
(@ENTRY,@SOURCETYPE,28,0,2,0,100,0,20,30,8000,9000,11,56431,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Arcane Bomb");DELETE FROM `creature_loot_template` WHERE `Entry` = 800041;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 38186, 0, 0.01, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 37180, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 35570, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 41793, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 37193, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 41793, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 37186, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 37191, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 37194, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800041, 49307, 0, 12.5, 0, 1, 2, 1, 1); 




DELETE FROM `creature` WHERE `guid` = 800041;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800041','800041','0','1','1','21322','0','-6279.27','-2304.74','398.35','3.34','20000','0','0','1000000','250000','0');

DELETE FROM `creature_template` WHERE `entry` = 800041;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800041,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */21322,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Lord of Doom',
  /* Subname */'Ein unbekannter Herrscher',
  /* Iconname */'',
  /* gossip_menu_id`  */800041,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */0.5,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800041,
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
  /*  AiName */'SmartAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'');

UPDATE `creature_template` SET `HealthModifier`=1500, `ArmorModifier`=50, `DamageModifier`=110 WHERE `entry`=800041;


DELETE FROM `creature_text` WHERE `entry` = 800041;
REPLACE INTO  `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('800041', '1', '0', 'Ihr seid langweilig. Moment ich hole einen Kaffee.', '14', '0', '100', '5', '0', '0', 'VPP');
REPLACE INTO  `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('800041', '2', '0', 'Tötet ihr mich, wird das Konsequenzen nach sich ziehen.', '14', '0', '100', '5', '0', '0', 'VPP');
REPLACE INTO  `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('800041', '3', '0', 'Niemals! Bevor ich sterbe, wird der Server ausgemacht.', '14', '0', '100', '5', '0', '0', 'VPP');
REPLACE INTO  `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('800041', '4', '0', 'Ich habe Euch gewarnt.', '14', '0', '100', '5', '0', '0', 'VPP');
REPLACE INTO  `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('800041', '5', '0', 'Verdammt! Ihr wart zu schnell für mich!', '14', '0', '100', '5', '0', '0', 'VPP');



SET @ENTRY := 800041;
SET @SOURCETYPE := 0;
 
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 800041;
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES ('800041', '0', '9', '0', '2', '0', '100', '0', '90', '95', '20000', '30000', '11', '3651', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Boucler NICE !');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '7', '0', '2', '0', '100', '0', '32', '40', '20000', '30000', '11', '19645', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Boucler');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '5', '0', '2', '0', '100', '0', '30', '87', '9000', '12000', '11', '39176', '2', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'FEAR');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '6', '0', '2', '0', '100', '0', '1', '99', '5000', '6000', '11', '43114', '2', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', 'FireWall');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '18', '0', '2', '0', '100', '0', '99', '100', '50000', '51000', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Talk');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '22', '0', '2', '0', '100', '0', '0', '1', '70000', '70000', '1', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Talk4');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '17', '0', '2', '0', '100', '0', '1', '99', '2000', '3500', '11', '11264', '2', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', 'Ice Blaste');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '8', '0', '2', '0', '100', '0', '1', '99', '5000', '6000', '11', '23169', '2', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'FireWall');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '0', '0', '2', '0', '100', '0', '2', '60', '8000', '8100', '11', '22291', '2', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'CYCLY 70%');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '16', '0', '2', '0', '100', '0', '30', '80', '3000', '5000', '11', '69167', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Big and big dmg ');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '15', '0', '2', '0', '100', '0', '1', '12', '2000', '3500', '11', '69024', '2', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', 'Toxic Waste 12 - 1%');
 REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('800041', '0', '14', '0', '2', '0', '100', '0', '20', '86', '7000', '9500', '11', '69024', '2', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', 'Toxic Waste 86 - 20 %');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '13', '0', '2', '0', '100', '0', '1', '16', '50000', '60000', '11', '55816', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'BERSRk');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '19', '0', '2', '0', '100', '0', '85', '86', '70000', '70000', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Talk1');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '20', '0', '2', '0', '100', '0', '15', '16', '70000', '70000', '1', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Talk2');
REPLACE INTO  `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)  VALUES ('800041', '0', '21', '0', '2', '0', '100', '0', '15', '16', '70000', '70000', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Talk3');DELETE FROM `creature_template` WHERE `entry` = 800042;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800042,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning Ausstatter Rumu',
  /*  Subname */'219er',
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
 
 
DELETE FROM `creature` WHERE `guid` = 800042;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800042','800042','0','1','1','17072','0','-794.85','1508.97','104.41','4.17','20000','0','0','1000000','250000','0');

DELETE FROM `npc_vendor` WHERE `entry` =800042;  

/*Amulett */
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47494,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46008,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49799,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46343,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45696,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45285,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49818,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46022,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40071,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40374,0,0,0);

/* Rücken*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49792,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45322,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45318,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46341,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49832,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47501,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40252,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40721,0,0,0);


/* Handgelenke*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45291,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45423,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49809,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40325,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47496,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46009,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40323,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39765,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45316,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45301,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49820,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49787,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39702,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49797,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47565,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45283,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39764,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40734,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40330,0,0,0);

/*Taille*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45306,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49796,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39190,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49806,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45709,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40200,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47170,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45895,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45333,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49810,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40327,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39762,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49808,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45975,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47510,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45304,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45304,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47229,0,0,0);

/*Füße*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47560,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49805,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46030,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40246,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47504,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45378,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47248,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45302,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46346,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45701,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49831,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40367,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45330,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47511,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49795,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45698,0,0,0);

/*Ring*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45303,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,43993,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,46010,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39401,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45702,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40080,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45418,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40719,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,37192,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,3694,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47243,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40370,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39171,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39193,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39407,0,0,0);

/*Schmuck*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45313,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40257,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49080,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40371,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40431,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40256,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47214,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39257,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45308,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40373,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40432,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,47213,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39229,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40255,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45292,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40258,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49078,0,0,0);

/*Schildhand*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45314,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39766,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40273,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40350,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49821,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45682,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,45707,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,49835,0,0,0);

/*Relike*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40342,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39757,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40321,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40191,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40337,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40268,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40322,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40267,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,39728,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800042,0,40207,0,0,0);












DELETE FROM `creature_template` WHERE `entry` = 800043;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800043,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning Ausstatter',
  /*  Subname */'T8',
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
 
 DELETE FROM `creature` WHERE `guid` = 800043;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800043','800043','0','1','1','17072','0','-780.79','1499.60','104.47','4.13','20000','0','0','1000000','250000','0');

DELETE FROM `npc_vendor` WHERE `entry` =800043;  
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45335,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45336,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45337,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45338,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45339,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45340,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45341,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45342,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45343,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45344,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45345,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45346,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45347,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45348,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45349,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45350,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45351,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45352,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45353,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45354,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45355,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45356,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45357,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45358,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45359,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45360,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45361,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45362,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45363,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45364,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45365,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45366,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45367,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45368,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45369,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45370,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45371,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45372,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45373,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45374,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45375,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45376,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45377,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45379,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45380,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45381,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45382,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45383,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45384,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45385,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45386,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45387,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45388,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45389,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45390,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45391,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45392,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45393,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45394,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45395,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45396,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45397,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45398,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45399,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45400,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45401,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45402,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45403,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45404,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45405,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45406,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45407,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45408,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45409,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45410,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45411,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45412,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45413,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45414,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45415,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45416,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45417,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45419,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45420,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45421,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45422,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45424,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45425,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45426,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45427,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45428,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45429,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45430,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45431,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45432,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,45433,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800043,0,46131,0,0,0);



DELETE FROM `creature_template` WHERE `entry` = 800044;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800044,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning First Ausstattung',
  /*  Subname */'Made by Exitare',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */0,
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
  /* Scriptname  */'npc_first_char');
  
DELETE FROM `creature` WHERE `guid` = 800044;
DELETE FROM `creature` WHERE `guid` = 798000;
DELETE FROM `creature` WHERE `guid` = 798001;
DELETE FROM `creature` WHERE `guid` = 798002;
DELETE FROM `creature` WHERE `guid` = 798003;
DELETE FROM `creature` WHERE `guid` = 798004;
DELETE FROM `creature` WHERE `guid` = 798005;
DELETE FROM `creature` WHERE `guid` = 798006;

/*Mensch*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800044','800044','0','1','1','17072','-1','-8949.25','-120.33','83.19','4.67','20000','0','0','1000000000','25000000','1');

/*Zwerg*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798000','800044','0','1','1','17072','-1','-6240.37','325.76','382.46','1.44','20000','0','0','1000000000','25000000','1');

/*Nachtelf*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798001','800044','1','1','1','17072','-1','10326.05','821.34','1326.43','2.35','20000','0','0','1000000000','25000000','1');

/*Draenei/Gnom*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798002','800044','530','1','1','17072','-1','-3972.57','-13924.72','100.49','5.99','20000','0','0','1000000000','25000000','1');

/*Orc*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798003','800044','1','1','1','17072','-1','-610.06','-4248.89','38.95','3.13','20000','0','0','1000000000','25000000','1');

/*Untote*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798004','800044','0','1','1','17072','-1','1656.50','1684.79','120.71','6.05','20000','0','0','1000000000','25000000','1');

/*Taure*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798005','800044','1','1','1','17072','-1','-2904.73','-258.34','52.94','4.71','20000','0','0','1000000000','25000000','1');

/*Blutelfe*/
REPLACE INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798006','800044','530','1','1','17072','-1','10355.12','-6370.60','36.12','1.99','20000','0','0','1000000000','25000000','1');

DELETE FROM `creature_loot_template` WHERE `Entry` = 800045;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 38186, 0, 1, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 37180, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 35570, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 41793, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 37193, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 41793, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 37186, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 37191, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 37194, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800045, 49307, 0, 12.5, 0, 1, 2, 1, 1); 


DELETE FROM `creature` WHERE `guid` = 800045;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800045','800045','1','1','1','29492','0','10114.31','-51.81','6.22','4.43','604800','0','0','1000000','250000','0');

DELETE FROM `creature_template` WHERE `entry` = 800045;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800045,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */29492,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Galadriel',
  /* Subname */'Herrscherin des Waldes',
  /* Iconname */'',
  /* gossip_menu_id`  */800045,
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
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800045,
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
  /*  Scriptname  */'boss_two');

UPDATE `creature_template` SET `HealthModifier`=20000, `ArmorModifier`=450, `DamageModifier`=150 WHERE `entry`=800045;




DELETE FROM `creature_template` WHERE `entry` = 800046;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800046,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */17072,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOWning Ausstatter Exitare',
  /*  Subname */'219er',
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
 
 
DELETE FROM `creature` WHERE `guid` = 800046;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800046','800046','0','1','1','17072','0','-804.83','1515.51','104.41','4.28','20000','0','0','1000000','250000','0');

DELETE FROM `npc_vendor` WHERE `entry` =800046;  



/*Zauberstäbe*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49852,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45713,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,39712,0,0,0);


/*Schusswaffen*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49844,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45872,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46342,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,40265,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46018,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46339,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45309,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,41168,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49813,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,40190,0,0,0);


/*Dolch*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49682,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49789,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46024,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49846,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45685,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47569,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45332,0,0,0);

/*Faustwaffe*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45284,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,39416,0,0,0);

/*1h Axt*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49840,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46031,0,0,0);

/*1h Kolben*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49845,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47509,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45972,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45892,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49783,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47508,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46351,0,0,0);

/*1h Schwert*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45287,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49833,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47500,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45700,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49827,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45298,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45331,0,0,0);

/*Stäbe*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45695,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49793,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49790,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46025,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46350,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45934,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49801,0,0,0);

/*Stangenwaffe*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45996,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47522,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45311,0,0,0);

/*2h Axt*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,47493,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45458,0,0,0);

/*2h Kolben*/
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,45282,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49802,0,0,0);

/* 2h Schwert */
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,46016,0,0,0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800046,0,49839,0,0,0);











DELETE FROM `creature_template` WHERE `entry` = 800047;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800047,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */26790,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'MMOwning Faction`n`Race',
  /* Subname */'Made by Exitare',
  /* Iconname */'',
  /* gossip_menu_id`  */0,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  35,
  /* npcflag Was ist er Questgeber oder weiteres? */3,
  /* Speedwalk */0,
  /* speedrun */ 1.14286,
  /* scale */1,
  /* rank  Normal, Elite?*/0,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */0,
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
  /*  mingold`  */0, 
  /*  MaxGold  */ 0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'racechange');


DELETE FROM `creature` WHERE `guid` = 800047;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800047','800047','1','1','1','26790','0','1602.25','-4411.74','9.06','2.09','20000','0','0','1000000','250000','0');

DELETE FROM `creature` WHERE `guid` = 798007;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798007','800047','0','1','1','26790','0','-8849.69','670.08','97.87','5.23','20000','0','0','1000000','250000','0');

DELETE FROM `creature` WHERE `guid` = 798007;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798008','800047','0','1','1','26790','0','-9772.01','2117.10','13.65','2.90','20000','0','0','1000000','250000','0');
DELETE FROM `creature_loot_template` WHERE `Entry` = 800048;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 38186, 0, 1, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 37180, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 35570, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 41793, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 37193, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 41793, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 37186, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 37191, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 37194, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800048, 49307, 0, 12.5, 0, 1, 2, 1, 1); 




DELETE FROM `creature_template` WHERE `entry` = 800048;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800048,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */29492,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Allianzchampion',
  /* Subname */'',
  /* Iconname */'',
  /* gossip_menu_id`  */800048,
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
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800048,
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
  /*  AiName */'SmartAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'allianceboss');

UPDATE `creature_template` SET `HealthModifier`=20000, `ArmorModifier`=450, `DamageModifier`=150 WHERE `entry`=800048;




DELETE FROM `creature_loot_template` WHERE `Entry` = 800049;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 38186, 0, 1, 0, 1, 0, 5, 25);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 37180, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 35570, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 41793, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 37193, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 41793, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 37186, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 37191, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 37194, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800049, 49307, 0, 12.5, 0, 1, 2, 1, 1); 




DELETE FROM `creature_template` WHERE `entry` = 800049;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800049,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */29492,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Hordechampion',
  /* Subname */'',
  /* Iconname */'',
  /* gossip_menu_id`  */800049,
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
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
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
  /* lootid */800049,
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
  /*  AiName */'SmartAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'hordeboss');

UPDATE `creature_template` SET `HealthModifier`=20000, `ArmorModifier`=450, `DamageModifier`=150 WHERE `entry`=800049;




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




DELETE FROM `creature_template` WHERE `entry` = 800051;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800051,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */25811,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning Vendor',
  /*  Subname */'Questitems',
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
 
 DELETE FROM `creature` WHERE `guid` = 800051;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800051','800051','0','1','1','25811','0','-9822.82','2012.83','6.00','0.9','20000','0','0','1000000','250000','0');

DELETE FROM `npc_vendor` WHERE `entry` =800051;  
-- 300 Ehrenpunkte = 1 Ehrenpunkt
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800051, 0, 43308, 0, 0, 826);
-- 15 Triumphmarken = 1 Auktionsitem
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800051, 0, 21140, 0, 0, 2685);
-- 1 Feuerstein und Zunder 4500 Arena Points + 1930 Rating 
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800051, 0, 4471, 0, 0, 2460);
-- 1 Feine Gewürze = 1 Mal der Illidari
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800051, 0, 3713, 10, 10000, 1959);
-- 1Scharfes Gewürz =
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(800051, 0, 3713, 10, 10000, 1959);




DELETE FROM `creature_template` WHERE `entry` = 800052;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800052,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */21975,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Orca',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */800052,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */0,
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
  
DELETE FROM `creature` WHERE `id` = 800052;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800052','800052','0','1','1','21975','0','-9860.76','2142.72','-3.14','0.51','50','100','0','1000000','250000','0');




DELETE FROM `quest_template` WHERE  `id` = 800012;
DELETE FROM `quest_template_addon` WHERE `id` = 800012;
DELETE FROM `creature_questender` WHERE `id` = 800005   AND `quest` = 800012;
DELETE FROM `creature_queststarter` WHERE `id` = 800005   AND `quest` = 800012;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800012,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 52026,
 /*  RewardChoiceItemID2  */ 52027,
 /*  RewardChoiceItemID3  */ 52025,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 1,
 /*  RewardChoiceItemQuantity2  */ 1,
 /*  RewardChoiceItemQuantity3  */ 1,
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
 /*  LogTitle  */ 'Die Drachenmutter',
 /*  LogDescription  */  'Tötet Sindragosa',
 /*  QuestDescription   */ 'Hallo $N,tötet Sindragosa. Sindragosa ist die Mutter aller Drachen, die ihr schon bezwungen habt. Sie muss sterben damit ich die benötigte Tinktur erstellen kann bzw sie wirksam werden kann.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet Sindragosa',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 36853,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
 /*  RequiredItemId1  */ 49908,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 15,
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
( /*  ID  */800012,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800007,
  /*  NextQuestID  */800013,
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
(800005, 800012);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800005, 800012);

DELETE FROM `quest_template` WHERE  `id` = 800013;
DELETE FROM `quest_template_addon` WHERE `id` = 800013;
DELETE FROM `creature_questender` WHERE `id` = 800005   AND `quest` = 800013;
DELETE FROM `creature_queststarter` WHERE `id` = 800005   AND `quest` = 800013;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800013,
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
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 49426,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 1,
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
 /*  RewardFactionValue5  */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Die Tinktur der 4 Elemente',
 /*  LogDescription  */  'Tötet die Verkörperung der 4 Elemente.',
 /*  QuestDescription   */ 'Hallo $N,die 4 Elemente besitzen Mächte die wir für das erfolgreiche Einsetzen der Tinktur brauchen. Tötet sie daher alle und nehmt deren Kraft in Euch auf. Viel Erfolg fleißige Wanderer.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet die Verkörperung der 4 Elemente.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800037,
 /*  RequiredNpcOrGo2  */ 800038,
 /*  RequiredNpcOrGo3  */ 800030,
 /*  RequiredNpcOrGo4  */ 800025,
 /*  RequiredNpcOrGoCount1  */ 1,
 /*  RequiredNpcOrGoCount2  */ 1,
 /*  RequiredNpcOrGoCount3  */ 1,
 /*  RequiredNpcOrGoCount4  */ 1,
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
( /*  ID  */800013,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800012,
  /*  NextQuestID  */800014,
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
(800005, 800013);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800005, 800013);

DELETE FROM `quest_template` WHERE  `id` = 800014;
DELETE FROM `quest_template_addon` WHERE `id` = 800014;
DELETE FROM `creature_questender` WHERE `id` = 800004   AND `quest` = 800014;
DELETE FROM `creature_queststarter` WHERE `id` = 800005   AND `quest` = 800014;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800014,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 30,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 1,
 /*  RewardChoiceItemQuantity2  */ 1,
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
 /*  RewardFactionValue5  */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Überbringt die Tinkur meinem Mann',
 /*  LogDescription  */  'Bringt die Tinktur zu Destro MMOwning.',
 /*  QuestDescription   */ 'Hallo $N, die Tinktur ist fertig und muss nun nur noch meinem Mann überbracht werden. Aber beeilt Euch.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt die Tinktur zu Destro MMOwning.',
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
( /*  ID  */800014,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800013,
  /*  NextQuestID  */800015,
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
(800004, 800014);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800005, 800014);

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800544,
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
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32842,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 38186,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 2,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Weekly: Kayoula',
 /*  LogDescription  */  'Tötet Kayoula.',
 /*  QuestDescription   */ 'Hallo $N, tötet Kayoula. Kayoula ist die verschollene Frau von Exitare. Sie muss sterben damit sich diese Brut nicht weiterentwickeln kann. Es ist notwendig!',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Ist er zu schwer für Euch?',
 /*  RequestItemsText  */ 'Tötet Kayoula.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800037,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800544,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800005,
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
(800015, 800544);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800015, 800544);

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800545,
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
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32842,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 38186,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 2,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Weekly: Tempus',
 /*  LogDescription  */  'Tötet Tempus.',
 /*  QuestDescription   */ 'Hallo $N, Tötet Tempus den Verrätern. Er ist über den Porter zu erreichen. Er muss vernichtet werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Ist er zu schwer für Euch?',
 /*  RequestItemsText  */ 'Tötet Tempus.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800038,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800545,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800005,
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
(800015, 800545);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800015, 800545);

DELETE FROM `quest_template` WHERE  `id` = 800546;
DELETE FROM `quest_template_addon` WHERE `id` = 800546;
DELETE FROM `creature_questender` WHERE `id` = 800015   AND `quest` = 800546;
DELETE FROM `creature_queststarter` WHERE `id` = 800015   AND `quest` = 800546;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800546,
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
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32842,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 38186,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 2,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Weekly: Moon',
 /*  LogDescription  */  'Tötet Moon.',
 /*  QuestDescription   */ 'Hallo $N, Tötet Moon die Verräterin. Sie ist über den Porter zu erreichen. Sie muss vernichtet werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Ist sie zu schwer für Euch?',
 /*  RequestItemsText  */ 'Tötet Moon.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800039,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800546,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800005,
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
(800015, 800546);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800015, 800546);

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800547,
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
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32842,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 38186,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 1,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Weekly: Maltyriun',
 /*  LogDescription  */  'Tötet Maltyriun.',
 /*  QuestDescription   */ 'Hallo $N, Tötet Maltyriun den Verrätern. Er ist über den Porter zu erreichen. Er muss vernichtet werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Ist er zu schwer für Euch?',
 /*  RequestItemsText  */ 'Tötet Maltyriun.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800040,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800547,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800005,
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
(800015, 800547);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800015, 800547);

DELETE FROM `quest_template` WHERE  `id` = 800548;
DELETE FROM `quest_template_addon` WHERE `id` = 800548;
DELETE FROM `creature_questender` WHERE `id` = 800001   AND `quest` = 800548;
DELETE FROM `creature_queststarter` WHERE `id` = 800001   AND `quest` = 800548;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800548,
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
 /*  RewardOrRequiredMoney  */ 1000000,
 /*  RewardMoneyMaxLevel  */ 1000000,	
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
 /*  RewardItem1  */ 8827,
 /*  RewardItem2  */ 46006,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 1,
 /*  RewardAmount2  */ 1,
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
 /*  LogTitle  */ 'Säuberung vom Schlamm',
 /*  LogDescription  */  'Säubert uns vom Schlamm und tötet 25 schwarzer Schlamm.',
 /*  QuestDescription   */ 'Dieser ekelhafte Schlamm verteilt überall seinen Unrat. Bitte bitte kümmert Euch darum. Sie dürfen nicht wieder ihre schleimigen Spuren auf dem Boden hinterlassen',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Wunderbar $N, dem Schlamm wird das eine Lehre sein.',
 /*  RequestItemsText  */ 'Hallo $N, hast du alles getötet?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 1032,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 25,
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
( /*  ID  */800548,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 800004,
  /*  NextQuestID  */0,
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
(800001, 800548);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800001, 800548);


DELETE FROM `quest_template` WHERE  `id` = 800549;
DELETE FROM `quest_template_addon` WHERE `id` = 800549;
DELETE FROM `creature_questender` WHERE `id` = 800001   AND `quest` = 800549;
DELETE FROM `creature_queststarter` WHERE `id` = 800001   AND `quest` = 800549;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800549,
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
 /*  RewardOrRequiredMoney  */ 900000,
 /*  RewardMoneyMaxLevel  */ 900000,	
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
 /*  RewardItem1  */ 14341,
 /*  RewardItem2  */ 22682,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 2,
 /*  RewardAmount2  */ 1,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 14227,
 /*  RewardChoiceItemID2  */ 7080,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 2,
 /*  RewardChoiceItemQuantity2  */ 2,
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
 /*  LogTitle  */ 'Die Moosfelle',
 /*  LogDescription  */  'Die Mossfelle und der Wollstoff müssen getötet sowie gesammelt werden.',
 /*  QuestDescription   */ 'Die Mossfelle sammeln viel Wollstoff der uns fehlt, für Kleidung. Wir werden uns deren Wollstoffen aneignen. Tötet sie also alle, und klaut den Wollstoff.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Wunderbar $N, unsere Kleidungsproduktion ist gesichert.',
 /*  RequestItemsText  */ 'Hallo $N, hast du alles was du brauchst?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 1011,
 /*  RequiredNpcOrGo2  */ 1012,
 /*  RequiredNpcOrGo3  */ 1013,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 25,
 /*  RequiredNpcOrGoCount2  */ 20,
 /*  RequiredNpcOrGoCount3  */ 18,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 2592,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 60,
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
( /*  ID  */800549,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 800548,
  /*  NextQuestID  */0,
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
(800001, 800549);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800001, 800549);


DELETE FROM `quest_template` WHERE  `id` = 800550;
DELETE FROM `quest_template_addon` WHERE `id` = 800550;
DELETE FROM `creature_questender` WHERE `id` = 800001   AND `quest` = 800550;
DELETE FROM `creature_queststarter` WHERE `id` = 800001   AND `quest` = 800550;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800550,
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
 /*  RewardOrRequiredMoney  */ 900000,
 /*  RewardMoneyMaxLevel  */ 900000,	
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
 /*  RewardItem1  */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 22457,
 /*  RewardChoiceItemID2  */ 21886,
 /*  RewardChoiceItemID3  */ 22452,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 2,
 /*  RewardChoiceItemQuantity2  */ 2,
 /*  RewardChoiceItemQuantity3  */ 2,
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
 /*  LogTitle  */ 'Die Eulen',
 /*  LogDescription  */  'Tötet die primitiven Eulenbestien',
 /*  QuestDescription   */ 'Töte die primitiven Eulenbestien und die gifitgen Seuchenfledermäuse um die Welt frei von Ungeziffer zu machen.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Wunderbar $N, schön das ihr alles geschafft habt.',
 /*  RequestItemsText  */ 'Hallo $N, hast du alles was du brauchst?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 2928,
 /*  RequiredNpcOrGo2  */ 8601,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 12,
 /*  RequiredNpcOrGoCount2  */ 15,
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
( /*  ID  */800550,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 800549,
  /*  NextQuestID  */0,
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
(800001, 800550);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800001, 800550);

DELETE FROM `quest_template` WHERE  `id` = 800551;
DELETE FROM `quest_template_addon` WHERE `id` = 800551;
DELETE FROM `creature_questender` WHERE `id` = 800001   AND `quest` = 800551;
DELETE FROM `creature_queststarter` WHERE `id` = 800001   AND `quest` = 800551;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800551,
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
 /*  RewardOrRequiredMoney  */ 1000000,
 /*  RewardMoneyMaxLevel  */ 1000000,	
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
 /*  RewardItem1  */ 47241,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 2,
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
 /*  LogTitle  */ 'Der Geißelfürst',
 /*  LogDescription  */  'Der Geißelfürst muss sterben',
 /*  QuestDescription   */ 'Der Geißelfürst Tyrannus ist mehr als nur ein Geschwür in unserem Land. Holt die Grube zurück. Sie war Teil unseres Reichtums. Dort haben wir unser Erz geschürft, bis der Geißelfürst sie uns abnahm.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Der Geißelfürst muss sterben',
 /*  RequestItemsText  */ 'Hallo $N, hast du alles getötet?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 36658,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800551,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 800550,
  /*  NextQuestID  */0,
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
(800001, 800551);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800001, 800551);


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800552,
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
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32842,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 38186,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/1,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Weekly: Tyranium',
 /*  LogDescription  */  'Tötet Tyranium.',
 /*  QuestDescription   */ 'Hallo $N, Tötet Tyranium den geflügelten Schrecken. Er ist über den Porter zu erreichen. Er muss vernichtet werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Ist er zu schwer für Euch?',
 /*  RequestItemsText  */ 'Tötet Tyranium.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800050,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */800552,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 800005,
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
(800015, 800552);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800015, 800552);

DELETE FROM `quest_template` WHERE  `id` = 800553;
DELETE FROM `quest_template_addon` WHERE `id` = 800553;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 800553;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 800553;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800553,
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
 /*  RewardOrRequiredMoney  */ 2000000,
 /*  RewardMoneyMaxLevel  */ 2000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 32768,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten    */ 38186,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 3,
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
 /*  LogTitle  */ 'Kristallisierte Steinsplitter',
 /*  LogDescription  */  'Sammelt 60 Stück der Steinsplitter',
 /*  QuestDescription   */ 'Hallo $C, schön Euch hier begrüßen zu dürfen. Bringt mir kristallierste Steinsplitter damit ich meine KLinge wieder schärfen kann. Sie ist im Kampf gegen unseren Feid ganz stumpf geworden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Sammelt 60 Stück der Steinsplitter',
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
 /*  RequiredItemId1  */ 29579,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 60,
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
( /*  ID  */800553,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802035,
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
(16991, 800553);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 800553);
DELETE FROM `quest_template` WHERE  `id` = 802028;
DELETE FROM `quest_template_addon` WHERE `id` = 802028;
DELETE FROM `creature_questender` WHERE `id` = 27990   AND `quest` = 802028;
DELETE FROM `creature_queststarter` WHERE `id` = 27990   AND `quest` = 802028;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802028,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,
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
 /*  RewardIten    */ 12363,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 5,
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
 /*  LogTitle  */ 'Die Verjüngung',
 /*  LogDescription  */  'Bringt Krasus die Glyphe der Verjüngung.',
 /*  QuestDescription   */ 'Hallo $N,bringt mir bitte die Glyphe der Verjüngung. Es ist Zeit  mein ewiges Leben um ein weiteres Stück zu verlängern. Helft mir bitte.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt Krasus die Glyphe der Verjüngung.',
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
 /*  RequiredItemId1  */ 50125,
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
( /*  ID  */802028,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802026,
  /*  NextQuestID  */802029,
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
(27990, 802028);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(27990, 802028);

DELETE FROM `quest_template` WHERE  `id` = 802029;
DELETE FROM `quest_template_addon` WHERE `id` = 802029;
DELETE FROM `creature_questender` WHERE `id` = 27990   AND `quest` = 802029;
DELETE FROM `creature_queststarter` WHERE `id` = 27990   AND `quest` = 802029;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802029,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
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
 /*  LogTitle  */ 'Der Kommandant',
 /*  LogDescription  */  'Tötet den Nerubischen Kommandanten.',
 /*  QuestDescription   */ 'Hallo $N,der Nerubische Kommandant wacht auf seinem Berg und schüchtert seine ganze Umgebung ein. Wir müssen ihn loswerden. Tötet ihn. Ihr findet ihn auf der Anhöhe kurz hinter Gallgrimm in der Drachenöde. Es liegt zwischen der Feste Wintergarde und Gallgrimm.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet den Nerubischen Kommandanten.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 800036,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */802029,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802028,
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
(27990, 802029);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(27990, 802029);

DELETE FROM `quest_template` WHERE  `id` = 802030;
DELETE FROM `quest_template_addon` WHERE `id` = 802030;
DELETE FROM `creature_questender` WHERE `id` = 27990   AND `quest` = 802030;
DELETE FROM `creature_queststarter` WHERE `id` = 27990   AND `quest` = 802030;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802030,
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
 /*  RewardIten    */ 33223,
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
 /*  LogTitle  */ 'Suche nach Exitares Frau',
 /*  LogDescription  */  'Findet und untersucht die Stelle an welcher Exitares Frau zuletzt gesehen wurde.',
 /*  QuestDescription   */ 'Hallo $N,Exitares Frau wurde entführt. Er bat mich um Hilfe und ich werde ihm helfen. Sucht die Stelle auf, an der Kayoula zuletzt gesehen wurde und bringt mir erste Indizien für ihr verschwinden. Sucht nach ihren Federschmuck. Es kann sein, das dieser nicht mehr verstreut auf dem Boden liegt, sondern von den dort vorkommenden Drachenknochenkondoren aufgelesen wurde. Der letzte Ort an dem Kayoula gesehen wurde war links vom Obsidiandrachenschrein. Helft uns und ihr werdet reich belohnt.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Findet und untersucht die Stelle an welcher Exitares Frau zuletzt gesehen wurde.',
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
 /*  RequiredItemId1  */ 36823,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 10,
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
( /*  ID  */802030,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802029,
  /*  NextQuestID  */802031,
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
(27990, 802030);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(27990, 802030);
DELETE FROM `quest_template` WHERE  `id` = 802031;
DELETE FROM `quest_template_addon` WHERE `id` = 802031;
DELETE FROM `creature_questender` WHERE `id` = 188263   AND `quest` = 802031;
DELETE FROM `creature_queststarter` WHERE `id` = 27990   AND `quest` = 802031;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802031,
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
 /*  RewardOrRequiredMoney  */ 9000000,
 /*  RewardMoneyMaxLevel  */ 9000000,
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
 /*  RewardIten    */ 44710,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 2,
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
 /*  LogTitle  */ 'Folgt der Spur',
 /*  LogDescription  */  'Folgt der Spur die Exitares Frau hinterlassen hat.',
 /*  QuestDescription   */ 'Hallo $N,zum Glück seid ihr zurückgekommen. Sucht nach einem weiteren Anhaltspunkt zum Verschwinden von Exitares Frau. Ich weiß das sie einen Zwischenstopp in der Gegend zwischen Granitquell und der Venturebucht machen wollten. Aber aus Sicherheitsgründen wurde mir der genaue Ort verschwiegen.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Folgt der Spur die Exitares Frau hinterlassen hat.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 24667,
 /*  RequiredNpcOrGo2  */ 26425,
 /*  RequiredNpcOrGo3  */ 26446,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 40,
 /*  RequiredNpcOrGoCount2  */ 40,
 /*  RequiredNpcOrGoCount3  */ 40,
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
( /*  ID  */802031,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802030,
  /*  NextQuestID  */802032,
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
(27990, 802031);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(27990, 802031);
DELETE FROM `quest_template` WHERE  `id` = 802032;
DELETE FROM `quest_template_addon` WHERE `id` = 802032;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802032;
DELETE FROM `creature_queststarter` WHERE `id` = 27990   AND `quest` = 802032;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802032,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
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
 /*  LogTitle  */ 'Verlagerung der Truppen',
 /*  LogDescription  */  'Reist zur Höllenfeuerhalbinsel und verstärkt unsere Aushilfstruppen.',
 /*  QuestDescription   */ 'Hallo $N,wir müssen die Suche leider ruhen lassen. Unsere Aushilfstruppen sind in großer Bedrängnis. Ihr müsst sie Unterstützen. Reißt zur Höllenfeuerhalbinsel zum Posten des Cenarius und meldet Euch bei Tiah Rotmähne.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Reist zur Höllenfeuerhalbinsel und verstärkt unsere Aushilfstruppen.',
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
( /*  ID  */802032,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802031,
  /*  NextQuestID  */802033,
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
(16991, 802032);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(27990, 802032);
DELETE FROM `quest_template` WHERE  `id` = 802033;
DELETE FROM `quest_template_addon` WHERE `id` = 802033;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802033;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 802033;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802033,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,
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
 /*  RewardIten    */ 49177,
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
 /*  LogTitle  */ 'Angriff auf die Angreifer',
 /*  LogDescription  */  'Tötet 40 Sumpflichtbluter und 25 Verhungender Fungusgiganten.',
 /*  QuestDescription   */ 'Hallo $N, Euere erste Schlacht wird in Zangarmarschen stattfinden. Geht dorthin und tötet 40 Sumpflichtbluter sowie 25 Verhungende Fungusgiganten. Sie koorperieren mit unserem eigentlichen Feind. Daher müssen sie vernichtet werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet 40 Sumpflichtbluter und 25 Verhungender Fungusgiganten.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 18125,
 /*  RequiredNpcOrGo2  */ 18133,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 25,
 /*  RequiredNpcOrGoCount2  */ 40,
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
( /*  ID  */802033,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802032,
  /*  NextQuestID  */802034,
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
(16991, 802033);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 802033);
DELETE FROM `quest_template` WHERE  `id` = 802034;
DELETE FROM `quest_template_addon` WHERE `id` = 802034;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802034;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 802034;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802034,
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
 /*  RewardIten    */ 0,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 0,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 10577,
 /*  RewardChoiceItemID2  */ 10644,
 /*  RewardChoiceItemID3  */ 38561,
 /*  RewardChoiceItemID4  */ 47556,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 1,
 /*  RewardChoiceItemQuantity2  */ 1,
 /*  RewardChoiceItemQuantity3  */ 5,
 /*  RewardChoiceItemQuantity4  */ 1,
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
 /*  LogTitle  */ 'Die zweite Welle abfangen',
 /*  LogDescription  */  'Tötet Kael´thas, Murmur, Magheridon sowie das Grauen aus der Tiefe.',
 /*  QuestDescription   */ 'Hallo $N, die zweite Welle werden wir abfangen. Die 4 Kommandanten müssem dazu vernichtet werden. Hoffen wir das ihre Anstrengungen dadurch durcheinander gebracht werden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet Kael´thas, Murmur, Magheridon sowie das Grauen aus der Tiefe.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 24664,
 /*  RequiredNpcOrGo2  */ 18708,
 /*  RequiredNpcOrGo3  */ 17257,
 /*  RequiredNpcOrGo4  */ 21217,
 /*  RequiredNpcOrGoCount1  */ 2,
 /*  RequiredNpcOrGoCount2  */ 2,
 /*  RequiredNpcOrGoCount3  */ 2,
 /*  RequiredNpcOrGoCount4  */ 2,
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
( /*  ID  */802034,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802033,
  /*  NextQuestID  */802035,
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
(16991, 802034);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 802034);
DELETE FROM `quest_template` WHERE  `id` = 802035;
DELETE FROM `quest_template_addon` WHERE `id` = 802035;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802035;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 802035;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802035,
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
 /*  RewardIten    */ 49426,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 5,
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
 /*  LogTitle  */ 'Erfolg oder doch nicht?',
 /*  LogDescription  */  'Um den Erfolg zu garantieren müssen wir Auktionspapiere erlangen.',
 /*  QuestDescription   */ 'Hallo $N, wir haben von Auktionspapieren erfunden, welche unser Feind nutzt um seine Geschäfte auf den Märkten geheim zu halten. Wir müssen diese Papiere erlangen um deren Transaktionen folgen zu können. Bitte bringt uns 10 solcher Papiere, das sollte uns reichen.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Um den Erfolg zu garantieren müssen wir Auktionspapiere erlangen.',
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
 /*  RequiredItemId1  */ 33015,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 10,
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
( /*  ID  */802035,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802034,
  /*  NextQuestID  */802036,
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
(16991, 802035);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 802035);
DELETE FROM `quest_template` WHERE  `id` = 802300;
DELETE FROM `quest_template_addon` WHERE `id` = 802300;
DELETE FROM `creature_questender` WHERE `id` = 800024   AND `quest` = 802300;
DELETE FROM `creature_queststarter` WHERE `id` = 800024   AND `quest` = 802300;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802300,
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
 /*  RewardOrRequiredMoney  */ 800000,
 /*  RewardMoneyMaxLevel  */ 800000,
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
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Beutebucht',
 /*  LogDescription  */  'Tötet Mok´rash den Spalter',
 /*  QuestDescription   */ 'Hallo $N, Mok´rash der Spalter versperrt die Bucht zu Beutebucht. Er muss getötet werden, damit wir weitere Handelslieferungen erhalten können.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet Mok´rash den Spalter',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 1493,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
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
( /*  ID  */802300,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802006,
  /*  NextQuestID  */ 802301,
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
(800024, 802300);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800024, 802300);

DELETE FROM `quest_template` WHERE  `id` = 802301;
DELETE FROM `quest_template_addon` WHERE `id` = 802301;
DELETE FROM `creature_questender` WHERE `id` = 3339   AND `quest` = 802301;
DELETE FROM `creature_queststarter` WHERE `id` = 800024   AND `quest` = 802301;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802301,
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
 /*  RewardOrRequiredMoney  */ 800000,
 /*  RewardMoneyMaxLevel  */ 800000,
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
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Meldung in Ratchet',
 /*  LogDescription  */  'Meldet Euch bei Kapitän Thalo`thas Blendsoon',
 /*  QuestDescription   */ 'Hallo $N, meldet Euch bei Kapitän Thalo`thas Blendsoon. Er hat weitere Instruktionen für Euch. Es ist sehr sehr wichtig. ',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Meldet Euch bei Kapitän Thalo`thas Blendsoon',
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
( /*  ID  */802301,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802301,
  /*  NextQuestID  */ 802302,
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
(3339, 802301);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800024, 802301);

DELETE FROM `quest_template` WHERE  `id` = 802302;
DELETE FROM `quest_template_addon` WHERE `id` = 802302;
DELETE FROM `creature_questender` WHERE `id` = 3339   AND `quest` = 802302;
DELETE FROM `creature_queststarter` WHERE `id` = 3339   AND `quest` = 802302;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802302,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,
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
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Alte Rechnungen begleichen',
 /*  LogDescription  */  'Begleicht meine alten Rechnungen',
 /*  QuestDescription   */ 'Hallo $N, ich hab noch ein paar Rechnungen mit alten Bekannten offen. Könnt ihr Euch darum kümmern bitte? Ich finde es sehr sehr wichtig. Ich wurde hintergangen, während unserer gemeinsamen Zeit. Könnt ihr mir bei der Gelegenheit gleich noch etwas für meinen Eintopf bringen? Ich danke $N.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Begleicht meine alten Rechnungen',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 1717,
 /*  RequiredNpcOrGo2  */ 18732,
 /*  RequiredNpcOrGo3  */ 23578,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 1,
 /*  RequiredNpcOrGoCount2  */ 1,
 /*  RequiredNpcOrGoCount3  */ 3,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 11404,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 33,
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
( /*  ID  */802302,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802301,
  /*  NextQuestID  */ 802303,
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
(3339, 802302);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(3339, 802302);

DELETE FROM `quest_template` WHERE  `id` = 802303;
DELETE FROM `quest_template_addon` WHERE `id` = 802303;
DELETE FROM `creature_questender` WHERE `id` = 3339   AND `quest` = 802303;
DELETE FROM `creature_queststarter` WHERE `id` = 3339   AND `quest` = 802303;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802303,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 935,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 42000,
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
 /*  RewardIten */ 46780,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 1,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Die Mechanar',
 /*  LogDescription  */  'Nehmt Euch den Mechanar an',
 /*  QuestDescription   */ 'Piep, Piep, Piep....... *Roll* *Roll* *Roll* Oh hallo $N. Ich habe gerade versucht die Mechanar ironisch zu vertonen. Naja war nicht so erfolgreich. Aber lassen wir das. Meine Freunde von den Sha`tar hassen dieses Gesocks von verhassten Leuten. Wenn ihr Euch bei den Sha`tar beliebt machen wollt, führt ihr diese Aufgabe aus. ',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Nehmt Euch den Mechanar an',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 19166,
 /*  RequiredNpcOrGo2  */ 20990,
 /*  RequiredNpcOrGo3  */ 20059,
 /*  RequiredNpcOrGo4  */ 19167,
 /*  RequiredNpcOrGoCount1  */ 17,
 /*  RequiredNpcOrGoCount2  */ 30,
 /*  RequiredNpcOrGoCount3  */ 12,
 /*  RequiredNpcOrGoCount4  */ 25,
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
( /*  ID  */802303,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802302,
  /*  NextQuestID  */ 802304,
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
(3339, 802303);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(3339, 802303);

DELETE FROM `quest_template` WHERE  `id` = 802304;
DELETE FROM `quest_template_addon` WHERE `id` = 802304;
DELETE FROM `creature_questender` WHERE `id` = 3339   AND `quest` = 802304;
DELETE FROM `creature_queststarter` WHERE `id` = 3339   AND `quest` = 802304;




REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802304,
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
 /*  RewardOrRequiredMoney  */ 20000000,
 /*  RewardMoneyMaxLevel  */ 20000000,
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
 /*  RewardIten */ 46114,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 10,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Reise durch die Zeit',
 /*  LogDescription  */  'Tötet die Intriganten',
 /*  QuestDescription   */ 'Ich danke Euch für das Ausführen der Aufgabe. Ich habe auch sofort eine nächste für Euch. Im Scharlachroten Kloster gibt es Wesen, wenn man das so sagen darf, welche des Lebens nicht würdig sind.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Tötet die Intriganten',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 4283,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 50,
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
 /*  RequiredItemId1  */ 42552,
 /*  RequiredItemId2  */ 45085,
 /*  RequiredItemId3  */ 45804,
 /*  RequiredItemId4  */ 49893,
 /*  RequiredItemId5  */ 37663,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 1,
 /*  RequiredItemCount3  */ 1,
 /*  RequiredItemCount4  */ 1,
 /*  RequiredItemCount5  */ 10,
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
( /*  ID  */802304,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802303,
  /*  NextQuestID  */ 802305,
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
(3339, 802304);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(3339, 802304);

DELETE FROM `quest_template` WHERE  `id` = 802305;
DELETE FROM `quest_template_addon` WHERE `id` = 802305;
DELETE FROM `creature_questender` WHERE `id` = 800006   AND `quest` = 802305;
DELETE FROM `creature_queststarter` WHERE `id` = 3339   AND `quest` = 802305;




REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802305,
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
 /*  RewardOrRequiredMoney  */ 400000,
 /*  RewardMoneyMaxLevel  */ 400000,
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
 /*  RewardIten */ 40753,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 7,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Torvan von Doom',
 /*  LogDescription  */  'Reise zu einem alten Freund',
 /*  QuestDescription   */ 'Arggh $R. Ihr müsst unbedingt zu Tovan von Doom dem Unerreichbaren reisen. Torvan ist ein alter Reisegeselle aus unseren Seemanszeiten. Geht zu ihm und berichtet ihm, dass sein alter Freund Raubein noch lebt. Er wird sich an mich erinnern. Vielleicht möchtet ihr ihm aber noch etwas zu trinken bringen. Wir Seemänner sind ja ein Trinkervölkchen.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Reise zu einem alten Freund',
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
 /*  RequiredItemId1  */ 32783,
 /*  RequiredItemId2  */ 32909,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 3,
 /*  RequiredItemCount2  */ 5,
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
( /*  ID  */802305,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802305,
  /*  NextQuestID  */ 802306,
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
(800006, 802305);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(3339, 802305);

DELETE FROM `quest_template` WHERE  `id` = 802306;
DELETE FROM `quest_template_addon` WHERE `id` = 802306;
DELETE FROM `creature_questender` WHERE `id` = 800034   AND `quest` = 802306;
DELETE FROM `creature_queststarter` WHERE `id` = 800006   AND `quest` = 802306;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802306,
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
 /*  RewardOrRequiredMoney  */ 10000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 11886,
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
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Die geheime Nachricht',
 /*  LogDescription  */  'Bringt die geheime Nachricht zu Rumus Diener',
 /*  QuestDescription   */ 'Bringt die geheime Nachricht an einen von Rumu´s Dienern. Ich möchte das ihr mir beweist, das ihr zu eurem Wort steht. Bringt einem Diener von Rumu die Nachricht. Geht jetzt Landratten!',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt die geheime Nachricht zu Rumus Diener',
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
 /*  RequiredItemId1  */ 11886,
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
( /*  ID  */802306,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802306,
  /*  NextQuestID  */ 802307,
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
(800034, 802306);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800006, 802306);

DELETE FROM `quest_template` WHERE  `id` = 802307;
DELETE FROM `quest_template_addon` WHERE `id` = 802307;
DELETE FROM `creature_questender` WHERE `id` = 800006   AND `quest` = 802307;
DELETE FROM `creature_queststarter` WHERE `id` = 800034   AND `quest` = 802307;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802307,
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
 /*  RewardOrRequiredMoney  */ 800000,
 /*  RewardMoneyMaxLevel  */ 800000,
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
 /*  RewardChoiceItemID5 */ 0,
 /*  RewardChoiceItemID6 */ 0,
 /*  RewardChoiceItemQuantity1  */0 ,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5   */ 0,
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
 /*  LogTitle  */ 'Die Rückkehr',
 /*  LogDescription  */  'Bringt die mysteriöse Nachricht zurück zu Torvan.',
 /*  QuestDescription   */ 'Bringt die mysteriöse Nachricht zurück zu Tovan von Doom. In der Nachricht ist bestimmt bescheinigt das ihr loyal und ausdauernd seid.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt die mysteriöse Nachricht zurück zu Torvan.',
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
 /*  RequiredItemId1  */ 1381,
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
( /*  ID  */802307,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802307,
  /*  NextQuestID  */ 802308,
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
(800006, 802307);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800034, 802307);

DELETE FROM `quest_template` WHERE  `id` = 802308;
DELETE FROM `quest_template_addon` WHERE `id` = 802308;
DELETE FROM `creature_questender` WHERE `id` = 800006   AND `quest` = 802308;
DELETE FROM `creature_queststarter` WHERE `id` = 800006   AND `quest` = 802308;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802308,
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
 /*  RewardOrRequiredMoney  */ -500000000,
 /*  RewardMoneyMaxLevel  */ 150000000,
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
 /*  RewardChoiceItemID1  */ 45088,
 /*  RewardChoiceItemID2  */ 46348,
 /*  RewardChoiceItemID3  */ 45094,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */  0,
 /*  RewardChoiceItemID6 */  0,
 /*  RewardChoiceItemQuantity1  */ 1,
 /*  RewardChoiceItemQuantity2  */ 1,
 /*  RewardChoiceItemQuantity3  */ 1,
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
 /*  LogTitle  */ 'Der Pirat in Torvan',
 /*  LogDescription  */  'Stillt Torvans Verlangen nach Gold',
 /*  QuestDescription   */ 'Hey ihr da. Ich bin ein Pirat und ihr seht reich aus. Bringt mir Gold, Gold, Gold, Gold. .....Moment, ich will Gold von Euch. Ohne das Gold, werde ich nicht mehr mit Euch reden.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Stillt Torvans Verlangen nach Gold',
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
 /*  RequiredItemId1  */ 3577,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 200,
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
( /*  ID  */802308,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802307,
  /*  NextQuestID  */ 0,
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
(800006, 802308);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800006, 802308);

DELETE FROM `quest_template` WHERE  `id` = 805023;
DELETE FROM `quest_template_addon` WHERE `id` = 805023;
DELETE FROM `creature_questender` WHERE `id` = 800026   AND `quest` = 805023;
DELETE FROM `creature_queststarter` WHERE `id` = 800026   AND `quest` = 805023;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */805023,
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
 /*  RewardOrRequiredMoney  */ 2500000,
 /*  RewardMoneyMaxLevel  */ 2500000,	
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
 /*  RewardItem1  */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 40211,
 /*  RewardChoiceItemID2  */ 40212,
 /*  RewardChoiceItemID3  */ 40093,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 10,
 /*  RewardChoiceItemQuantity2  */ 10,
 /*  RewardChoiceItemQuantity3  */ 5,
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
 /*  LogTitle  */ 'Magie aufladen',
 /*  LogDescription  */  'Um überhaupt diese mächtige Magie einsetzen zu können bedarf es wichtiger Vorbereitungen.',
 /*  QuestDescription   */ 'Es scheint als müssten wir alte Zauber aus den Lehrbüchern verwenden um diese Krähen los zu werden, ich hab in den Büchern schon nachgelesen und brauche dadurch noch einige Materialen. Ihr findet diese Gegenstände in der Scherbenwelt.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Wunderbar $C, ich packe diese Gegenstände in die Truhe.',
 /*  RequestItemsText  */ 'Hallo $N, uns fehlen noch paar Materialen, besorg diese doch bitte.',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ 'Gebt diese Gegenstände ab.',
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
 /*  RequiredItemId1  */ 22452,
 /*  RequiredItemId2  */ 22457,
 /*  RequiredItemId3  */ 22456,
 /*  RequiredItemId4  */ 21886,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 3,
 /*  RequiredItemCount2  */ 3,
 /*  RequiredItemCount3  */ 3,
 /*  RequiredItemCount4  */ 3,
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
( /*  ID  */805023,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 805022,
  /*  NextQuestID  */0,
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
(800026, 805023);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800026, 805023);


DELETE FROM `quest_template` WHERE  `id` = 805024;
DELETE FROM `quest_template_addon` WHERE `id` = 805024;
DELETE FROM `creature_questender` WHERE `id` = 800026   AND `quest` = 805024;
DELETE FROM `creature_queststarter` WHERE `id` = 800026   AND `quest` = 805024;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */805024,
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
 /*  RewardOrRequiredMoney  */ 2500000,
 /*  RewardMoneyMaxLevel  */ 2500000,	
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
 /*  RewardItem1  */ 6657,
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
 /*  LogTitle  */ 'Rumus Zeitvertreib',
 /*  LogDescription  */  'Angeln, angeln, angeln - Ruhe, psssht.',
 /*  QuestDescription   */ 'Täglich muss ich meinen Bedarf an Kohlenhydraten decken, deswegen gehe ich regelmäßig fischen. Mittlerweile schaffe ich nicht alleine die Menge zu fischen, die ich für die Nahrungszufuhr brauch.$B$BHelft mir bitte beim Fischen.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Wunderbar $C, ich packe diese Gegenstände in die Truhe. Damit hab ich wieder einen kleinen Vorrat.',
 /*  RequestItemsText  */ 'Hallo $N, hast du Fische für mich?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ 'Gebt die Fische ab.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 41813,
 /*  RequiredSourceItemId2  */ 41802,
 /*  RequiredSourceItemId3  */ 41805,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 25,
 /*  RequiredSourceItemCount2  */ 25,
 /*  RequiredSourceItemCount3  */ 10,
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
( /*  ID  */805024,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 805022,
  /*  NextQuestID  */0,
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
(800026, 805024);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800026, 805024);


DELETE FROM `quest_template` WHERE  `id` = 870000;
DELETE FROM `quest_template_addon` WHERE `id` = 870000;
DELETE FROM `creature_questender` WHERE `id` = 800052   AND `quest` = 870000;
DELETE FROM `creature_queststarter` WHERE `id` = 800052   AND `quest` = 870000;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */870000,
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
 /*  RewardItem1  */ 47556,
 /*  RewardItem2  */ 43102,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 10,
 /*  RewardAmount3  */ 2,
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
 /*  LogTitle  */ 'Sammlung Teil7',
 /*  LogDescription  */  'Bringt mir 100 Thoriumpatronen sowie 25 Frostgranaten.',
 /*  QuestDescription   */ 'Hallo $N. Nach euren vergangenen Erfolgen, muss ich Euch bitte ich euch mir 100 Thoriumpatronen sowie 50 Frostgranaten zu bringen.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Bringt mir 100 Thoriumpatronen sowie 25 Frostgranaten.',
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
 /*  RequiredItemId1  */ 15997,
 /*  RequiredItemId2  */ 32413,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 100,
 /*  RequiredItemCount2  */ 25,
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
( /*  ID  */870000,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 802023,
  /*  NextQuestID  */870001,
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
(800028, 870000);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800028, 870000);


DELETE FROM `quest_template` WHERE  `id` = 870001;
DELETE FROM `quest_template_addon` WHERE `id` = 870001;
DELETE FROM `creature_questender` WHERE `id` = 800052   AND `quest` = 870001;
DELETE FROM `creature_queststarter` WHERE `id` = 800052   AND `quest` = 870001;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */870001,
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
 /*  RewardOrRequiredMoney  */ 8000000,
 /*  RewardMoneyMaxLevel  */ 8000000,	
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
 /*  RewardItem1  */ 31957,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 20,
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
 /*  LogTitle  */ 'Sammlung Teil8',
 /*  LogDescription  */  'Bringt mir 75 Sonnenpartikel und tötet Selin Feuerherz sowie Mutantus den Verschlinger.',
 /*  QuestDescription   */ 'Hallo $N. Ich möchte Euch auf der Reise zu den Sammlern eine weitere Aufgabe geben. Bringt mir 75 Sonnenpartikel und tötet Selin Feuerherz sowie Mutantus den Verschlinger. Diese sind uns schon lange ein Dorn im Auge. Aber ihr habt es bald geschafft und könnt dann bald in die Feste der Sammler aufbrechen.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Bringt mir 75 Sonnenpartikel und tötet Selin Feuerherz sowie Mutantus den Verschlinger.',
 /*  RequestItemsText  */ 'Hallo $N, hast du die Aufgabe abgeschlossen?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 24723,
 /*  RequiredNpcOrGo2  */ 3654,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 2,
 /*  RequiredNpcOrGoCount2  */ 2,
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
 /*  RequiredItemId1  */ 34664,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 75,
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
( /*  ID  */870001,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 802023,
  /*  NextQuestID  */870001,
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
(800028, 870001);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800028, 870001);


DELETE FROM `quest_template` WHERE  `id` = 890000;
DELETE FROM `quest_template_addon` WHERE `id` = 890000;
DELETE FROM `creature_questender` WHERE `id` = 800052   AND `quest` = 890000;
DELETE FROM `creature_queststarter` WHERE `id` = 800028   AND `quest` = 890000;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */890000,
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
 /*  RewardOrRequiredMoney  */ 1000000,
 /*  RewardMoneyMaxLevel  */ 1000000,	
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
 /*  LogTitle  */ 'Orca',
 /*  LogDescription  */  'Geht zu Orca und begrüßt ihn hier auf MMOwning World.',
 /*  QuestDescription   */ 'Ein neuer Mitstreiter ist in MMOwning World eingetroffen. Geht zu ihm und begrüßt ihn.',
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
( /*  ID  */890000,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 802023,
  /*  NextQuestID  */0,
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
(800028, 890000);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800052, 890000);


DELETE FROM `quest_template` WHERE  `id` = 890001;
DELETE FROM `quest_template_addon` WHERE `id` = 890001;
DELETE FROM `creature_questender` WHERE `id` = 800052   AND `quest` = 890001;
DELETE FROM `creature_queststarter` WHERE `id` = 800052   AND `quest` = 890001;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */890001,
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
 /*  RewardOrRequiredMoney  */ 100000000,
 /*  RewardMoneyMaxLevel  */ 100000000,	
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
 /*  RewardItem1  */ 38186,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 200,
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
 /*  LogDescription  */  'Sammelt 1000 Emblem des Triumphs.',
 /*  QuestDescription   */ 'Hallo $N. Ich begrüße Euch. Ich soll Euch einen Gruß von Exitare und Rumu hier lassen. Sie wünschen Euch viel Spaß beim bestreiten dieser Questreihe. Diese Questreihe ist absichtlich extrem gewählt und soll extreme Belohnungen gewähren. Ihr könnt darauf einstellen, fieße, langwierige, sowie schwere Quests zu bekommen. Verzweifelt aber nicht. Es warten gute Belohnung auf Euch.',
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
 /*  RequiredItemId1  */ 47241,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1000,
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
( /*  ID  */890001,
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
(800052, 890001);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800052, 890001);


