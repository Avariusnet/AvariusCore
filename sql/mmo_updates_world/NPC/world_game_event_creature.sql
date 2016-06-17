DELETE FROM `game_event_creature_quest` WHERE `quest` = '900001';

INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES ('70', '32690', '900001');

UPDATE `game_event_creature` SET `guid`='1600000' WHERE `guid`='999999' and`eventEntry`='24';

INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES ('24', '999999');
