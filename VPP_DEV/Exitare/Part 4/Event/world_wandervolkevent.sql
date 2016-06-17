DELETE FROM `game_event` WHERE `eventEntry` = 72;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`)
VALUES (72, '2015-09-19 12:40:00', '2030-11-10 20:00:00', '40320', '10080', '0','Das Wandervolk', '0');

DELETE FROM `game_event_npcflag` WHERE `eventEntry` = '72';
INSERT INTO `game_event_npcflag` (`eventEntry`, `guid`, `npcflag`) VALUES ('72', '800027', '4227');

DELETE FROM `game_event_creature_quest` WHERE `eventEntry` = 72;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES 
('72', '800015', '900800'),
('72', '800027', '900801');

DELETE FROM `game_event_creature` WHERE `eventEntry` = 72;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
('72', '800070');
