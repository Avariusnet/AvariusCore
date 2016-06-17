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
(@ENTRY,@SOURCETYPE,15,0,5,0,100,1,10,1,0,0,1,7,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"on_kill");