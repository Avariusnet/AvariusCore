UPDATE `creature_template` SET `faction`='21' WHERE `entry`='23872';
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('1600000','23872','230','1','1','21824','0','888.93','-130.61','-49.74','5.23','21600','0','0','1000000','250000','0');

UPDATE `game_event_creature` SET `guid`='1600000' WHERE `guid`='999999' and`eventEntry`='24';
