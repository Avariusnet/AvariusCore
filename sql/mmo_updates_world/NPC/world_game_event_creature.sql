DELETE FROM `game_event_creature_quest` WHERE `quest` = '900001' AND eventEntry = '70';
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES ('70', '32690', '900001');



DELETE FROM `game_event_creature` where `eventEntry` = 24 AND `guid` = 999999;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES ('24', '999999');
UPDATE `game_event_creature` SET `guid`='1900001' WHERE `guid`='999999' and`eventEntry`='24';
