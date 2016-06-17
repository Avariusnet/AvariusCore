DELETE FROM `creature_template` WHERE `entry` = 60003;

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




