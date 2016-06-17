REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 60001,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */18718,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Seruc von Lantus',
  /*  Subname */'Der Porter',
  /*  Iconname */'',
  /* gossip_menu_id`  */60001,
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
  /*  Movement Type */1, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'SmartAI');
  
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600001','60001','0','1','1','18718','0','-9790.45','2133.42','10.70','5.005','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600002','60001','0','1','1','18718','0','-820.17','1534.69','19.08','1.11','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600003','60001','571','1','1','18718','0','5742.28','607.95','617.99','5.521','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600004','60001','0','1','1','18718','0','-12560.83','-1335.13','48.15','4.63','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600005','60001','0','1','1','18718','0','-7430.47','-2003.74','313.34','4.57','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600006','60001','0','1','1','18718','0','-12957.91','-1777.30','136.65','3.27','25','0','0','1000000','250000','0');
/* Bei 60008 weitermachen */
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600008','60001','530','1','1','18718','0','-2791.75','487.38','-24.59','0.48','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600009','60001','1','1','1','18718','0','-8030.87','1619.41','18.02','4.31','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600010','60001','571','1','1','18718','0','2973.88','-5825.55','262.96','1.6','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600011','60001','37','1','1','18718','0','-77.33','-50.54','270.42','2.06','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600012','60001','0','1','1','18718','0','-12473.71','-2676.62','89.98','3.16','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600013','60001','0','1','1','18718','0','-11767.65','-3514.68','86.74','4.74','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('600014','60001','0','1','1','18718','0','-6363.82','-2312.34','390.93','6.25','25','0','0','1000000','250000','0');



REPLACE INTO `npc_text` (ID, text0_0, text0_1, BroadcastTextID0, lang0, Probability0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, BroadcastTextID1, lang1, Probability1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, BroadcastTextID2, lang2, Probability2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, BroadcastTextID3, lang3, Probability3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, BroadcastTextID4, lang4, Probability4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, BroadcastTextID5, lang5, Probability5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, BroadcastTextID6, lang6, Probability6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, BroadcastTextID7, lang7, Probability7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5, VerifiedBuild) VALUES
('60001', 'Teleport zum PVP Areal', 'Teleport zum PVP Areal', '26965', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '0', '0', 'Raid: Fall des verlorenen Herrschers', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '1', '0', 'Teleport zum PVP Areal', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '2', '0', 'Teleport zur "Insel"', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '3', '0', 'Teleport zur Yasio', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '4', '0', 'Boss: Orrig', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '5', '0', 'Boss: Exitares Schatten', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '6', '0', 'Boss: Gequälte Seele', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '7', '0', 'Boss: Kayoula', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '8', '0', 'Boss: Tempus', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '9', '0', 'Boss: Arcturus', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '10', '0', 'Boss: Moon', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '11', '0', 'Boss: Maltyriun', '0', '1', '1', 'Soll geportet werden?');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `box_text`) VALUES ('60001', '12', '0', 'Boss: LORDofDOOM', '0', '1', '1', 'Soll geportet werden?');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 60001;
SET @ENTRY := 60001;
SET @SOURCETYPE := 0;

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  0,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */0,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */37,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-81.97,
/* target_y   */-42.46,
/* target_z  */270.42,
/* target_o */0.04,
/* comment  */"Azahra");



UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  1,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */1,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-793.67,
/* target_y   */1565.25,
/* target_z  */19.88,
/* target_o */3.25,
/* comment  */"Teleport PvP");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  2,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */2,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-9773.09,
/* target_y   */2126.72,
/* target_z  */15.40,
/* target_o */3.88,
/* comment  */"Teleport Insel");


UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  3,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */3,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */571,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */5728.79,
/* target_y   */608.62,
/* target_z  */618.59,
/* target_o */5.60,
/* comment  */"Teleport Yasio");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  4,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */4,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-12556.57,
/* target_y   */-1366.97,
/* target_z  */41.56,
/* target_o */1.024,
/* comment  */"Teleport Orrig");


UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  5,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */5,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-7440.66,
/* target_y   */-2029.63,
/* target_z  */313.72,
/* target_o */6.28,
/* comment  */"Teleport Exitare");


UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  6,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */6,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-12978.69,
/* target_y   */-1774.43,
/* target_z  */137.11,
/* target_o */3.5,
/* comment  */"Teleport Geqälte Seele");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  7,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */7,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */530,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-2793.37,
/* target_y   */493.29,
/* target_z  */-25.33,
/* target_o */0.42,
/* comment  */"Teleport_Kayoula");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  8,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */8,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */1,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-8041.58,
/* target_y   */1603.90,
/* target_z  */14.58,
/* target_o */3.19,
/* comment  */"Teleport_Tempus");


UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  9,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */9,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */571,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */2973.87,
/* target_y   */-5825.54,
/* target_z  */262.95,
/* target_o */1.6,
/* comment  */"Teleport_Arcturus");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  10,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */10,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-12474.73,
/* target_y   */-2688.13,
/* target_z  */89.61,
/* target_o */3.05,
/* comment  */"Teleport_Moon");


UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  11,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */11,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-11764.75,
/* target_y   */-3560.32,
/* target_z  */86.50,
/* target_o */5.31,
/* comment  */"Teleport_Marltyriun");

UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,
/*  id */  12,
/* link  */0,
/* event_type*/62,
/* event_phase_mask */0,
/* event_chance  */100,
/* event_flags  */0,
/* event_param1 */60001,
/* event_param2  */12,
/* event_param3   */0,
/* event_param4 */0,
/* action_type  */62,
/* action_param1 */0,
/* action_param2 */0,
/* action_param3  */0,
/* action_param4  */0,
/* action_param5  */0,
/* action_param6 */0,
/* target_type  */7,
/* target_param1 */0,
/* target_param2*/0,
/* target_param3  */0,
/* target_x  */-6362.47,
/* target_y   */-2324.61,
/* target_z  */390.93,
/* target_o */0.55,
/* comment  */"Teleport_LordOfDOOM");