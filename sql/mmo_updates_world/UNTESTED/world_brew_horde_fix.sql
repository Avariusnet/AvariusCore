DELETE FROM `creature` WHERE `guid` = 999999;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('999999','34677','0','1','1','29338','0','1802.81','242.35','62.75','2.04','25','0','0','1000000','250000','0');

INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES ('24', '999999');
