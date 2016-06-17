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
