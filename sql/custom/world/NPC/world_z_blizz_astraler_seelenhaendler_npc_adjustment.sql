/* delete astraler Seelenhändler ID 600900 from blizz-realm*/

DELETE FROM `creature` WHERE `guid`='798013';
DELETE FROM `creature` WHERE `guid`='798022';

/* Astraler Seelenhändler in der Mitte von Dalaran, derzeit nicht gespawned, erst freischalten wenn die Items angepasst wurden

DELETE FROM `creature` WHERE `guid` ='2000001';

INSERT INTO `creature` (guid, id, map, zoneId, areaId, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, VerifiedBuild) VALUES
('2000001', '600900', '571', '0', '0', '1', '1', '0', '0', '5802.48', '660.302', '647.807', '4.92167', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0');

löscht den Gildenhaustoken und den Astralen Kredit raus */

DELETE FROM `npc_vendor` WHERE `entry`='600900' and`item`='200000' and`ExtendedCost`='2411'; 	-- Gildenhaustoken
DELETE FROM `npc_vendor` WHERE `entry`='600900' and`item`='38186' and`ExtendedCost`='0';		-- Astraler Kredit

