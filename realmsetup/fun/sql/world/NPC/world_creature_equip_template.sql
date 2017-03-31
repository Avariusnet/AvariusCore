DELETE from `creature_equip_template` where `CreatureID` = 800059;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`) VALUES ('800059', '1', '49623', '49623');


/* Bosse Waffen */
DELETE FROM `creature_equip_template` where `CreatureID` = 800010;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800010', '1', '49623', '0', '0');

DELETE FROM `creature_equip_template` where `CreatureID` = 800039;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800039', '1', '50760', '0', '0');

/* Lucion */ 
DELETE FROM `creature_equip_template` where `CreatureID` = 800055;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800055', '1', '49623', '49623', '0');
