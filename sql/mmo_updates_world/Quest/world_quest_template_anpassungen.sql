
-- Wandervolk Questender

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('800027', '900800');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('800027', '900801');


/*--Orrig Halloweenquest Starter*/

DELETE FROM `creature_queststarter` WHERE `id` = 800002 and `quest` = 900504;
DELETE FROM `creature_questender` WHERE `id` = 800002 and `quest` = 900504;
REPLACE INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES ('71', '800002', '900504');
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('800002', '900504');


/* QUEst ID 802306 */
UPDATE `creature_questender` SET `id`='800004' WHERE `id`='800034' and`quest`='802306';
UPDATE `creature_queststarter` SET `id`='800004' WHERE `id`='800034' and`quest`='802307';
UPDATE `quest_template` SET `LogDescription`='Bringt die geheime Nachricht zu Destro MMOwning', `QuestDescription`='Bringt die geheime Nachricht zu Destro MMOwning. Ich moechte das ihr mir beweist, das ihr zu eurem Wort steht. Bringt Destro MMOwning die Nachricht. Geht jetzt Landratten!' WHERE `ID`='802306';


/* QUEST LEANDARIA */
UPDATE `creature_questender` SET `id`='800071' WHERE `id`='800086' and`quest`='900803';

/*GOBJECT DEL */
DELETE FROM gameobject WHERE `GUID` = 269628;
DELETE FROM gameobject WHERE `GUID` = 269631;
DELETE FROM gameobject WHERE `GUID` = 800032;
DELETE FROM gameobject WHERE `GUID` = 800475;



/* SINDRA GO */
DELETE FROM `gameobject` WHERE `guid` = 802291;
DELETE FROM `gameobject` WHERE `guid` = 802292;
INSERT INTO `gameobject` (guid, id, map, zoneId, areaId, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state, VerifiedBuild) VALUES 
('802291', '196485', '631', '0', '0', '15', '1', '4353.29', '2465', '203.489', '6.22878', '0', '0', '0.0272001', '-0.99963', '300', '0', '1', '0' ),
('802292', '196485', '631', '0', '0', '15', '1', '4355.64', '2500', '203.386', '6.22878', '0', '0', '0.0272001', '-0.99963', '300', '0', '1', '0' );
