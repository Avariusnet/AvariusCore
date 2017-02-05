SET
@ENTRY      := 600900,
@PRICE_1000 := 2410,
@PRICE_500  := 2407,
@PRICE_250  := 2409,
@PRICE_100  := 2408,
@PRICE_50   := 2411;
 DELETE FROM `creature_template` WHERE `entry` = 600900;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`,  `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 1460, 0, 0, 0, 'Astraler Seelenhändler', 'Akzeptiert Astrale Kredite', '', 0, 88, 88, 3, 35, 4225, 1, 1.14286, 0.15, 0, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 7, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '0', 1);

/*REPLACE INTO `creature` VALUES 
 ('15011146', @ENTRY, '1', '1', '1', '0', '0', '1582.5', '-4419.81', '8.27874', '4.04398', '300', '0', '0', '1', '0', '0', '0', '0', '0'),
('15011147', @ENTRY, '0', '1', '1', '0', '0', '-8847.52', '631.239', '95.1379', '0.358493', '300', '0', '0', '1', '0', '0', '0', '0', '0');*/
DELETE FROM `npc_vendor` where entry = @ENTRY;
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
 /*(@ENTRY, '0', '51955', '0', '0', @PRICE_1000), -- 1000 marks Zügel des eisbeschlagenen Frostbrutbezwingers
 (@ENTRY, '0', '51954', '0', '0', @PRICE_1000), -- 1000 marks Zügel des blutgebadeten Frostbrutbezwingers
 (@ENTRY, '0', '45802', '0', '0', @PRICE_1000), -- 1000 marks Zügel des rostigen Protodrachen */
 (@ENTRY, '1', '34092', '0', '0', @PRICE_1000), -- 1000 marks Netherdrache des Erbarmungslosen 
/* (@ENTRY, '0', '32458', '0', '0', @PRICE_1000), -- 1000 marks Al\'ars Asche */
 (@ENTRY, '2', '43516', '0', '0', @PRICE_1000), -- 1000 marks Brutaler Netherdrache
 /*(@ENTRY, '0', '54811', '0', '0', @PRICE_1000), -- 1000 marks Himmelsross  */
 (@ENTRY, '3', '21176', '0', '0', @PRICE_1000), -- 1000 marks Schwarzer Qirajiresonanzkristall 
 (@ENTRY, '4', '37676', '0', '0', @PRICE_1000), -- 1000 marks Rachsüchtiger Netherdrache 
 (@ENTRY, '5', '54860', '0', '0', @PRICE_500), -- 500 marks X-53 Reiserakete 
 (@ENTRY, '6', '43962', '0', '0', @PRICE_500), -- 500 marks Zügel des weißen Eisbären
 (@ENTRY, '7', '50250', '0', '0', @PRICE_500), -- 500 marks Große Liebesrakete
 (@ENTRY, '8', '45725', '0', '0', @PRICE_500), -- 500 marks Argentumhippogryph
 (@ENTRY, '9', '33809', '0', '0', @PRICE_500), -- 500 marks Kriegsbär der Amani
 /*(@ENTRY, '0', '49636', '0', '0', @PRICE_500), -- 500 marks Zügel des Drachen von Onyxia */
/* (@ENTRY, '0', '49286', '0', '0', @PRICE_500), -- 500 marks X-51 Netherrakete X-TREM */
 (@ENTRY, '10', '32768', '0', '0', @PRICE_500), -- 500 marks Zügel des Rabenfürsten 
 /*(@ENTRY, '0', '45693', '0', '0', @PRICE_500), -- 500 marks Mimirons Kopf  */
 (@ENTRY, '11', '34493', '0', '0', @PRICE_250), -- 250 marks Papierdrachen
 (@ENTRY, '12', '35227', '0', '0', @PRICE_250), -- 250 marks Wunschwettermaschine - Prototyp 01-B
 (@ENTRY, '13', '23713', '0', '0', @PRICE_250), -- 250 marks Hippogryphenjunges
 (@ENTRY, '14', '8494', '0', '0', @PRICE_250),  -- 250 marks Papageienkäfig (Hyazinthara)
 (@ENTRY, '15', '49287', '0', '0', @PRICE_250), -- 250 marks Tuskarrdrachen 
 (@ENTRY, '16', '49290', '0', '0', @PRICE_100), -- 100 marks Magisches Hühnerei 
 (@ENTRY, '17', '49284', '0', '0', @PRICE_100), -- 100 marks Zügel des schnellen Spektraltigers
 (@ENTRY, '18', '37719', '0', '0', @PRICE_100), -- 100 marks Schnelles Zhevra
 (@ENTRY, '19', '46109', '0', '0', @PRICE_100), -- 100 marks Meeresschildkröte
 (@ENTRY, '20', '43599', '0', '0', @PRICE_100), -- 100 marks Großer Blizzardbär
 (@ENTRY, '021', '23720', '0', '0', @PRICE_100), -- 100 marks Reitschildkröte
 (@ENTRY, '022', '35225', '0', '0', @PRICE_100), -- 100 marks X-51 Netherrakete
 (@ENTRY, '023', '19029', '0', '0', @PRICE_100), -- 100 marks Horn des Frostwolfheulers
 (@ENTRY, '024', '33977', '0', '0', @PRICE_100), -- 100 marks Schneller Braufestwidder
 (@ENTRY, '025', '30609', '0', '0', @PRICE_100), -- 100 marks Schneller Netherdrache
 (@ENTRY, '026', '32622', '0', '0', @PRICE_100), -- 100 marks Elekkhalsband
 (@ENTRY, '027', '32616', '0', '0', @PRICE_100), -- 100 marks Ei des Kolumbus
 (@ENTRY, '028', '32617', '0', '0', @PRICE_100), -- 100 marks Schläfriger Willy
 (@ENTRY, '029', '25535', '0', '0', @PRICE_100), -- 50 marks Netherwelpenhalsband
 (@ENTRY, '030', '13582', '0', '0', @PRICE_100), -- 100 marks Zerglinglasso
 (@ENTRY, '031', '13584', '0', '0', @PRICE_100), -- 100 marks Diablostein 
 (@ENTRY, '032', '49665', '0', '0', @PRICE_100), -- 100 marks Pandarenmönch
 (@ENTRY, '033', '43517', '0', '0', @PRICE_50), -- 50 marks Penguin Egg
 (@ENTRY, '034', '34492', '0', '0', @PRICE_50), -- 50 marks Raketenhühnchen
 (@ENTRY, '035', '49343', '0', '0', @PRICE_50), -- 50 marks Spektraltigerjunges
 (@ENTRY, '036', '41133', '0', '0', @PRICE_50), -- 50 marks Ungeschlüpfter Herr Fröstelich
 (@ENTRY, '037', '13583', '0', '0', @PRICE_50), -- 50 marks Pandahalsband
 (@ENTRY, '038', '49663', '0', '0', @PRICE_50), -- 50 marks Windreiterjunges
 (@ENTRY, '039', '23162', '0', '0', @PRICE_100), -- 100 marks Forors Kiste der endlosen Widerstandsausstattung
 (@ENTRY, '040', '38186', '0', '0', 0), 
 (@ENTRY, '041', '200000', '0', '0', @PRICE_50); -- 50 Gildenhaus Token 