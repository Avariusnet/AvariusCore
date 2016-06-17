DELETE FROM `game_event` WHERE `eventEntry` = 77;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`)
VALUES (77, '2015-10-21 21:00:00', '2030-11-10 20:00:00', '527040', '28740', '0','Worldevent', '0');


DELETE FROM `game_event_creature` WHERE `guid` BETWEEN 800102 AND 800105;
INSERT INTO `game_event_creature` VALUES
(77,800102),
(77,800103),
(77,800104),
(77,800105);