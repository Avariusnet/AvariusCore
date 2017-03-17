/* Moneychanger */

DELETE FROM `creature_template` WHERE (`entry`=99321);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(99321, 0, 0, 0, 0, 0, 25811, 25811, 0, 0, 'Coin Reseller', 'Moneychanger', '', 0, 76, 80, 0, 35, 128, 1, 1, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 0, 8, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0);

DELETE FROM `npc_vendor` WHERE `entry`=99321;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
/* 100 Arenapunkte = 1 Splitter eines Steinbewahrers */
(99321, 0, 43228, 0, 0, 2596),
/*100 Arenapunkte = 1 Siegel des Champions */
(99321, 1, 44990, 0, 0, 2596),
/* 25 Abzeichen der Gerechtigkeit = 1 Emblem des Triumphs */
(99321, 2, 47241, 0, 0, 1015),
/*1 Emblem der Ehre = 1 Emblem des Triumphs */
(99321, 3, 47241, 0, 0, 2589),
/* 1 Emblem der Eroberung = 1 Emblem des Triumphs */
(99321, 4, 47241, 0, 0, 2637),
/* 15 Emblem des Triumphs = 1 Emblem des Frosts */
(99321, 5, 49426, 0, 0, 2723),
/* 1 Frostmarke = 1 Emblem des Heldentums */
(99321, 6, 40752, 0, 0, 2743),
/* 1 Emblem des Triumphs = 1 Emblem des Heldentums */
(99321, 7, 40752, 0, 0, 2707);
/*(99321, 0, ??, 0, 0 ,2707); //1 эмблема триумфа */ 
/*(99321, 0, ??, 0, 0 ,2723); //15 эмблем триумфа */
