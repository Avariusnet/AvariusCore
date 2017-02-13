/* Transmog-NPC wird anderweitig platziert -> steht nun in Dala Mitte */

DELETE FROM `creature` WHERE `guid`='798012';
DELETE FROM `creature` WHERE `guid`='1600002';
DELETE FROM `creature` WHERE `guid`='798023';

/* Transmog NPC in der Mitte von Dalaran */

DELETE FROM `creature` WHERE `guid`='2000000';
INSERT INTO `creature` (guid, id, map, zoneId, areaId, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, VerifiedBuild) VALUES
('2000000', '190010', '571', '0', '0', '1', '1', '0', '0', '5783.38', '632.731', '647.648', '0.243735', '300', '0', '0', '12600', '0', '0', '0', '0', '0', '0');

