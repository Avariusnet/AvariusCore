
/*   MMOwning Schluesselmeister*/

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800011','800011','1','1','1','17822','0','1611.54','-4361.77','9.968551','2.6607','25','0','0','1000000','250000','0');
REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800012','800011','0','1','1','17822','0','-8822.93','650.009155','94.896767','5.184981','25','0','0','1000000','250000','0');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800011;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800011, 0, 0, 0, 0, 0, 17822, 0, 0, 0, 'MMOwning  Schluesselmeister', 'Exitares Baby', '', 0, 80, 80, 0, 128, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');



DELETE FROM `world`.`npc_vendor` WHERE entry = 800011;
INSERT INTO `world`.`npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
-- Schlüssel zur sengenden Schlucht
(800011,0,5396,0,0,0),
-- Werkstattschlüssel
-- ('900001','0','6893','0','0','0'),
-- Der Scharlachrote Schlüssel
(800011,0,7146,0,0,0),
-- Schlüssel zur Schattenschmiede
(800011,0,11000,0,0,0),
-- Reliktkastenschlüssel
-- (900001,'0','11078','0','0','0'),
-- Schlüssel zur Stadt
(800011,0,12382,0,0,0),
-- Silberdietrich
-- ('900001','0','15869','0','0','0'),
-- Golddietrich
-- ('900001','0','15870','0','0','0'),
-- Echtsilberdietrich
-- ('900001','0','15871','0','0','0'),
-- Arkanitdietrich
-- ('900001','0','15872','0','0','0'),
-- Mondsichelschlüssel
(800011,0,18249,0,0,0),
-- Gordokfesselschlüssel
-- ('900001','0','18250','0','0','0'),
-- Schlüssel für die Gordokhoftür
-- ('900001','0','18266','0','0','0'),
-- Schlüssel für die Gordokinnentür
-- ('900001','0','18268','0','0','0'),
-- Schlüssel für einen Skarabäuskasten
-- ('900001','0','21761','0','0','0'),
-- Schlüssel für einen großen Skarabäuskasten
-- ('900001','0','21762','0','0','0'),
-- Der Schlüssel des Meisters
(800011,0,24490,0,0,0),
-- Schlüssel des Schattenlabyrinths
(800011,0,27991,0,0,0),
-- Schlüssel der zerschmetterten Hallen
(800011,0,28395,0,0,0),
-- Flammengeschmiedeter Schlüssel
(800011,0,30622,0,0,0),
-- Schlüssel des Kessels
(800011,0,30623,0,0,0),
-- Schlüssel der Auchenai
(800011,0,30633,0,0,0),
-- Warpgeschmiedeter Schlüssel
(800011,0,30634,0,0,0),
-- Schlüssel der Zeit
(800011,0,30635,0,0,0),
-- Flammengeschmiedeter Schlüssel
(800011,0,30637,0,0,0),
-- Schlüssel zur Arkatraz
(800011,0,31084,0,0,0),
-- Schlüssel der Stürme
(800011,0,31704,0,0,0),
-- Mit Essenz erfüllter Mondstein
(800011,0,32449,0,0,0),
-- Der Schlüssel zur Violetten Festung
(800011,0,42482,0,0,0),
-- Titandietrich
-- ('900001','0','43853','0','0','0'),
-- Kobaltdietrich
-- ('900001','0','43854','0','0','0'),
-- Heroischer Schlüssel der fokussierenden Iris
(800011,0,44581,0,0,0),
-- Schlüssel der fokussierenden Iris
(800011,0,44582,0,0,0),
-- Schlüssel des Himmlischen Planetariums
(800011,0,45796,0,0,0),
-- Heroischer Schlüssel des Himmlischen Planetariums
(800011,0,45798,0,0,0);

UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 5396;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 7146;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 11000;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 12382;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry`= 18249;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 24490;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry`= 27991;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 28395;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30622;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30623;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30633;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30634;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30635;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30637;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 31084;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 31704;
UPDATE `world`.`item_template` SET `BuyPrice` = 15000000 WHERE `entry` = 32449;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 42482;
UPDATE `world`.`item_template` SET `BuyPrice` = 25000000 WHERE `entry` = 44581;
UPDATE `world`.`item_template` SET `BuyPrice` = 15000000 WHERE `entry` = 44582;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 45796;
UPDATE `world`.`item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 45798;


/*Böser Orig */

REPLACE INTO `world`.`creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800010','800010','0','1','1','3597','0','-10400.95','-1853.50','101.88','3.23','25','0','0','1000000','250000','1');

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800010,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */3597,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Johann Orrig',
  /*  Subname */'Der dunkle Schatten',
  /*  Iconname */'',
  /* gossip_menu_id` */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */0,
 /*  speedrun */ 1.14286,
  /*  scale */2,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */1000,
  /* RangeAttackTime`  */2000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */4104,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */7,
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
  /* mingold`  */5000000, 
  /* MaxGold  */10000000, 
  /*  AiName */'AggresorAI',
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */2097152, 
  /* Scriptname  */'AggresorAI');

/*NPC FISHING*/

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800009','800009','0','1','1','28264','0','-9784.66','2089.45','11.47','5.26','25','0','0','1000000','250000','0');

INSERT INTO `world`.`npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES ('800009', '-202001', '5000', '0', '0', '0');
INSERT INTO `world`.`npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES ('800009', '-202002', '5000', '0', '0', '0');
INSERT INTO `world`.`npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES ('800009', '-202003', '5000', '0', '0', '0');


REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800009,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */28264,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Lok´Regual',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  /*  npcflag Was ist er Questgeber oder weiteres? */211,
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
  /* trainer race  */7,
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
  /*Inahbit Type   */3, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 800009, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');

/*Hedwig*/

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800008','800008','0','1','1','22256','0','-9794.58','2083.68','13.075','3.13','25','0','0','1000000','250000','1');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800008;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800008, 0, 0, 0, 0, 0, 22256, 0, 0, 0, 'Hedwig', 'Der Adler', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');



/*Torwan von Monderius Varus*/


REPLACE INTO `world`.`creature`(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800007','800007','0','1','1','1701','0','-9797.73','2109.08','12.26','4.91','25','0','0','1000000','250000','1');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800007;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800007, 0, 0, 0, 0, 0, 1701, 0, 0, 0, 'Monderius Varus', 'Der Unscheinbare', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, 'SMARTAI');



/*Torwan von DOOM*/

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800006','800006','0','1','1','5769','0','-9790.1396','2103.05','12.16','3.15','25','0','0','1000000','250000','1');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800006;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800006, 0, 0, 0, 0, 0, 5769, 0, 0, 0, 'Torvan von Doom', 'Der Unerreichbare', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');


/* Sophie Mondhain */

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800005','800005','0','1','1','19177','0','-9786.88','2110.40','12.71','0.827','25','0','0','1000000','250000','1');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800005;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800005, 0, 0, 0, 0, 0, 19177, 0, 0, 0, 'Sophie Mondhain', 'Die Gerechte', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');


/* Destro Mowing */
REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800004','800004','0','1','1','26790','0','-9791.30','2106.30','12.43','4.08','25','0','0','1000000','250000','0');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800004;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800004, 0, 0, 0, 0, 0, 26790, 0, 0, 0, 'Destro Mowing', 'Der Erwaehlte', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');


REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800002','800002','1','1','1','3597','0','1361.20','-4352.91','26.84','4.633','25','0','0','1000000','250000','0');

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800002, 0, 0, 0, 0, 0, 3597, 0, 0, 0, 'Johann Orrig ', 'Das Zwerg', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, '');

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800000','800000','571','1','1','89','0','5810.46','699.74','619.03','2.893497','25','0','0','1000000','250000','0');
REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800000, 0, 0, 0, 0, 0, 89, 0, 0, 0, 'Thedriun Wyrmbräu', 'Der Reisende', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, '');


REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800001','800001','571','1','1','28159','0','3073.07','-3689.95','549.40','1.12','25','0','0','1000000','250000','0');
DELETE FROM `world`.`creature_template` WHERE `Entry` = 800001;

REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800001, 0, 0, 0, 0, 0, 28159, 0, 0, 0, 'Extator Magista', 'Der Erleuchtete', '', 0, 80, 80, 0, 2, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');

REPLACE INTO `world`.`creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800003','800003','0','1','1','29866','0','-8609.43','749.03','96.96','1.61','25','0','0','1000000','250000','0');

/* Pi von Haar NPC 800003 */
REPLACE INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800003,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */29866,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Pi von Haar',
  /*  Subname */'Der Sanfmütige',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  /*  npcflag Was ist er Questgeber oder weiteres? */2,
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
  /* trainer race  */7,
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
  /*Inahbit Type   */3, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');