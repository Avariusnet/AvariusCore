REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800011','800011','1','1','1','17822','0','1611.54','-4361.77','9.968551','2.6607','25','0','0','1000000','250000','0');
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800012','800011','0','1','1','17822','0','-8822.93','650.009155','94.896767','5.184981','25','0','0','1000000','250000','0');
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800012','800011','0','1','1','17822','0','-9739.48','2166.33','7.047659','5.092','25','0','0','1000000','250000','0');

DELETE FROM `creature_template` WHERE `Entry` = 800011;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (800011, 0, 0, 0, 0, 0, 17822, 0, 0, 0, 'MMOwning  Schluesselmeister', 'Exitares Baby', '', 0, 80, 80, 0, 35 , 128, 0, 1.14286, 1, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 1, 0, 0, '');



DELETE FROM `npc_vendor` WHERE entry = 800011;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
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

UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 5396;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 7146;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 11000;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 12382;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry`= 18249;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 24490;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry`= 27991;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 28395;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30622;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30623;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30633;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30634;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30635;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 30637;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 31084;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 31704;
UPDATE `item_template` SET `BuyPrice` = 15000000 WHERE `entry` = 32449;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 42482;
UPDATE `item_template` SET `BuyPrice` = 25000000 WHERE `entry` = 44581;
UPDATE `item_template` SET `BuyPrice` = 15000000 WHERE `entry` = 44582;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 45796;
UPDATE `item_template` SET `BuyPrice` = 10000000 WHERE `entry` = 45798;