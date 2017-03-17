/* delete (Racechange-NPC) Worgrain ID: 800047 from blizz-realm*/

DELETE FROM  `creature` WHERE `guid`='800047';
DELETE FROM  `creature` WHERE `guid`='798010';

/* Worgrain in der Mitte von Dalaran neben Astralen Seelenhändler*/

DELETE FROM `creature` WHERE `guid` ='2000002';

INSERT INTO `creature` (guid, id, map, zoneId, areaId, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, VerifiedBuild) VALUES
('2000002', '800047', '571', '0', '0', '1', '1', '0', '0', '5806.38', '661.418', '647.731', '4.79129', '300', '0', '0', '5808', '0', '0', '0', '0', '0', '0');
