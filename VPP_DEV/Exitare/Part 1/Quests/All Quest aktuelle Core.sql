-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2015 at 02:13 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trinitycore_temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `creature_questender`
--

CREATE TABLE IF NOT EXISTS `creature_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_questender`
--

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800000, 799999),
(800000, 800000),
(800001, 800001),
(800001, 800002),
(800001, 800003),
(800001, 800004),
(800001, 800500),
(800001, 800501),
(800002, 800502),
(800003, 800503),
(800004, 800005),
(800004, 800504),
(800004, 800505),
(800004, 800506),
(800004, 800507),
(800004, 800508),
(800005, 800006),
(800005, 800007),
(800006, 800509),
(800007, 800510),
(800007, 800512),
(800008, 800511),
(800008, 800513),
(800008, 802002),
(800009, 802000),
(800009, 802001);

-- --------------------------------------------------------

--
-- Table structure for table `creature_queststarter`
--

CREATE TABLE IF NOT EXISTS `creature_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_queststarter`
--

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800000, 800000),
(800000, 800001),
(800001, 800002),
(800001, 800003),
(800001, 800004),
(800001, 800005),
(800001, 800500),
(800001, 800501),
(800001, 800502),
(800001, 800503),
(800004, 800504),
(800004, 800505),
(800004, 800506),
(800004, 800507),
(800004, 800508),
(800005, 800006),
(800005, 800007),
(800006, 800509),
(800007, 800510),
(800007, 800512),
(800008, 800511),
(800008, 800513),
(800008, 802002),
(800009, 802000),
(800009, 802001);

-- --------------------------------------------------------

--
-- Table structure for table `gameobject_questender`
--

CREATE TABLE IF NOT EXISTS `gameobject_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_questender`
--


-- --------------------------------------------------------

--
-- Table structure for table `gameobject_queststarter`
--

CREATE TABLE IF NOT EXISTS `gameobject_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_queststarter`
--

REPLACE INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(700500, 799999);


-- --------------------------------------------------------

--
-- Table structure for table `quest_template`
--

CREATE TABLE IF NOT EXISTS `quest_template` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Method` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `QuestLevel` smallint(3) NOT NULL DEFAULT '1',
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestSortID` smallint(6) NOT NULL DEFAULT '0',
  `QuestType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SuggestedGroupNum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestIdChain` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardXPId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardOrRequiredMoney` int(11) NOT NULL DEFAULT '0',
  `RewardMoneyMaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardSpellCast` int(11) NOT NULL DEFAULT '0',
  `RewardHonor` int(11) NOT NULL DEFAULT '0',
  `RewardHonorMultiplier` float NOT NULL DEFAULT '1',
  `SourceItemId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardTitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredPlayerKills` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardTalents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardArenaPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItem1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItem2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItem3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItem4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardAmount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardAmount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardAmount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardAmount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemID6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemQuantity6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardFactionID1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionID2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionID3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionID4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionID5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValue3` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValue4` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValue5` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionOverride1` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionOverride2` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionOverride3` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionOverride4` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionOverride5` mediumint(8) NOT NULL DEFAULT '0',
  `PointMapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOption` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `LogTitle` text,
  `LogDescription` text,
  `QuestDescription` text,
  `EndText` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `QuestCompletionLog` text,
  `RequiredNpcOrGo1` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo2` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo3` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo4` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unknown0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ObjectiveText1` text,
  `ObjectiveText2` text,
  `ObjectiveText3` text,
  `ObjectiveText4` text,
  `DetailsEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteOnIncomplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EmoteOnComplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(5) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';

--
-- Dumping data for table `quest_template`
--

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(802002, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 500000, 500000, 0, 19838, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Der Vogel', 'Tötet Sturmflamme im Krater von Un´goro', 'Guten Tag $N, $B Sturmflamme hat sich lange genug vor seinen Aufgaben ferngehalten. Er sollte den Berg unter Kontrolle halten, doch diese Aufgabe scheint ihm nun ueber den Kopf zu wachsen. Ihr müsst ihn liquidieren. Sofort!', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Töte Sturmflamme noch heute!', 'Werdet ihr den Auftrag aufsführen?', 9376, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800513, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 32768, 0, 0, 0, 0, 52006, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kupferpulver', 'Bringt mir 30 Kupferpulver', 'Ich beötige Kupferpulver fuer meinen strahlenden Glanz des Gefieders', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Bringt mir 30 Kupferpulver.', 'Werdet ihr den Auftrag aufsführen?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24186, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(802001, 2,80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 802002, 250, 750000, 750000, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49784, 49787, 49786, 49785, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die Grünen Hügel Teil 2', 'Bringt mir die Seiten 11,14,16,18,20 der Grünen Hügel des Schlingendorntals', 'Die ersten fuenf Seiten waren sehr spannend und ereignisreich. Könnt ihr mir die weiteren Seiten bringen? Auf den ersten Blick wird es sich nur für manche lohnen, aber glaubt mir wenn ich Euch sage das dem nicht so ist.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Bringt mir die Seiten 11,14,16,18,20 der Gruenen Huegel des Schlingendorntals', 'Werdet ihr den Auftrag aufsführen?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2735, 2738, 2740, 2742, 2744, 0, 1, 1, 1, 1, 1, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(802000, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 802001, 250, 1000000, 1000000, 0, 19838, 0, 0, 0, 32, 0, 0, 0, 0, 5740, 43015, 0, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die Grünen Hügel Teil 1', 'Bringt mir die Seiten 1,4,6,8,10 der Grünen Hügel des Schlingendorntals', 'Ich bin sehr an Geschichten interessiert, deswegen bitte ich Euch, mir diese 5 Seiten zu bringen. Ich bin leider nicht sehr reich, daher kann ich Euch keine großen Belohnungen geben, aber ich kann Euch auf eine Reise schicken welche sich bestimmt für Euch lohnen wird.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Bringt mir die Seiten 1,4,6,8,10 der Gruenen Huegel des Schlingendorntals', 'Werdet ihr den Auftrag aufsführen?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2725, 2728, 2730, 2732, 2734, 0, 1, 1, 1, 1, 1, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800511, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 100000, 100000, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 40752, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Federn für mein Kleid', 'Bringt mir 30 raue Geiernfedern.', 'Bitte helft mir, ich benötige neue Federn für mein Gefieder.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Bringt mir 30 raue Geiernfedern.', 'Werdet ihr den Auftrag aufsführen?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 555, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800512, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 10000000, 10000000, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3860, 36913, 41163, 3577, 2840, 0, 8, 8, 5, 12, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammelwut', 'Sammelt 100 Stählerne Pfeilspitzen, 75 Netherstoff und tätet 10 Sonnenschuppenkreischer, 15 Fleischreißerhyjänen, 20 Kluftmoosgiftspucker, 15 Blutsichelfelzhetzer.', 'Helft uns bitte beim Sammeln dieser wichtigen Gegenstände. Wir benötigen diese wirklich dringend.', '', 'Sammelt 100 Stählerne Pfeilspitzen, 75 Netherstoff und tötet 10 Sonnenschuppenkreischer, 15 Fleischreißerhyjänen, 20 Kluftmoosgiftspucker, 15 Blutsichelfelzhetzer.', 'Du hast leider noch nicht alle benötigten Dinge zusammen.', 'Werdet ihr den Auftrag aufsführen?', 3255, 4127, 4007, 21423, 10, 15, 20, 15, 0, 0, 0, 0, 0, 0, 0, 0, 5123, 21877, 0, 0, 0, 0, 100, 75, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800510, 2, 80, 80, -1, 62, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 1000000, 1000000, 0, 0, 0, 0, 0, 32770, 0, 0, 0, 0, 47241, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1090, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orrig der dunkle Schatten ', 'Tötet Orrig den dunklen Schatten.', 'Wir können Orrig nicht weiter am Leben lassen. Er ist eine Gefahr für unser ganzes Volk. Vernichtet ihn. Geht zu Seruc von Lantus um zu Orrig zu gelangen.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Tötet Orrig den dunklen Schatten.', 'Werdet ihr den Auftrag aufsführen?', 800010, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800007, 2,80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 800008, 250, 40000000, 40000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34535, 10822, 8499, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die Essenz der ewigen Fünf', 'Bringt die Essenzen der ewigen Fünf zu Sophie Mondhain.', '$N,$BDie Tinktur der Sulforonblöcke war leider ein Fehlschlag. Ein  Vertrauter erzählte mir aber von Essenzen der ewigen Fünf. Diese sollen ueber magische Heilkräfte verfügen. Bitte helft mir und bringt mir diese 5 Essenzen. Die Essenzen der ewigen Fünf sollen sich im Besitz der 5 großen Weltendrachen befinden. Ein Name, an den ich mich errinern kann, war glaube ich Smariss.', '', 'Ich danke Euch.', 'Bringt die Essenzen der ewigen Fünf zu Sophie Mondhain.', 'Sophie Mondhain erwartet Euch sehnsüchtig.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700502, 700503, 700504, 700505, 700506, 0, 1, 1, 1, 1, 1, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 1000, 0, 0, 0, 1),
(800509, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 0, 250, 7000000, 7000000, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 49426, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Froststoff sammeln ', 'Sammelt 100 Froststoff', 'Wir benötigen Froststoff zum Weben unserer Kleidung. Bitte helf uns dabei.', '', 'Ich danke Euch', 'Sammelt 100 Froststoff', 'Bringt Ihr mir die benötigten Dinge?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33470, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800006, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 800007, 250, 15000000, 15000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15198, 15199, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 1117.86, -455.74, 0, 'Die Gesteinstinktur', 'Bringt 3 Sulfuronblöcke sowie 3000 Ehrenpunkte zu Sophie Mondhain', 'Wie ihr seht ist mein Mann mit der Worgenkrankheit befallen. Ich habe von einer Tinktur gehört, fuer welche man in die Tiefen des geschmolzenen Kerns reissen muss.\r\nBringt mir von dort 3 Sulfuronblöcke und zusätzlich 3000 Ehrenpunkte. Beachtet wohl, Sulfuronblöcke sind ein äußert seltenes Gut. Dem Vernehmen nach sind die Sulfuronblöcke im Geschmolzenen Kern zu finden.', '', 'Ich danke Euch.', 'Bringt die Sulfuronblöcke, sowie die Ehrenpunkte zu Sophie Mondhain.', 'Sophie Mondhain erwartet Euch sehnsüchtig.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17203, 43308, 0, 0, 0, 0, 3, 3000, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 1000, 0, 0, 0, 1),
(800506, 2, 80, 80, -1, 0, 0, 0, 690, 0, 0, 0, 0, 0, 250, 10000000, 10000000, 0, 0, 0, 0, 0, 32832, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zwergenfilet', '$N, tötet Magni Bronzebart', '$N, $B habt ihr Lust auf Zwergenfilet? Tötet Magni Bronzebart, den König der verachtenswerten Zwerge.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Ihr seid wohl ein kleiner Feigling?', 'Führt ihr meinen Auftrag aus?', 2784, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800507, 2, 80, 80, -1, 0, 0, 0, 1101, 0, 0, 0, 0, 0, 250, 10000000, 10000000, 0, 0, 0, 0, 0, 32832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hordenmassaker', '$N, tötet Thrall von Orgrimmar', '$N, $B habt ihr Lust auf ein Hordenmassaker? Tötet Thrall von Orgrimmar , den Hauptling der blutrünstigen Horde.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Ihr seid wohl ein kleiner Feigling?', 'Führt ihr meinen Auftrag aus?', 4949, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800508, 2, 80, 80, -1, 0, 10, 0, 690, 0, 0, 0, 0, 0, 250, 10000000, 10000000, 0, 0, 0, 0, 0, 32832, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tot den Menschen', '$N, tötet Varian Wrynn', '$N, $B habt ihr Lust den Menschen Leid zuzufügen? Tötet Varian Wrynn, den König der hochnässigen Menschen.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Ihr seid wohl ein kleiner Feigling?', 'Fuehrt ihr meinen Auftrag aus?', 29611, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800500, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 0, 250, 2500000, 2500000, 0, 0, 1000, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43102, 49908, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mehr Hilfe für das Volk', 'Liefert 50 Netherstoff und 30 Raptorkrallen an mich.', 'Wir haben einen täglichen Bedarf an verschiedenen Gütern. Liefert 50 Netherstoff und 30 Raptorkrallen an mich.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Liefert 50 Netherstoff und 30 Raptorkrallen an mich.', 'Bringt Ihr mir die benötigten Dinge?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21877, 29567, 0, 0, 0, 0, 50, 30, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800504, 2, 80, 80, -1, 62, 10, 0, 1791, 0, 0, 0, 0, 0, 250, 1000000, 1000000, 0, 0, 0, 0, 0, 32840, 0, 0, 0, 0, 49426, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8607.57, 751.41, 0, 'Naxxramas Rally', '$N bitte tötet Saphiron und Kel´Thuzad.', '$N,$B bittet entledigt Euch dieser 2 Bestien. Sie zerstören unsere Dörfer und töten unsere Kinder.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Bitte tötet Saphiron und Kel´Thuzad.', 'Führt ihr meinen Auftrag aus?', 15989, 15990, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800505, 2, 80, 80, -1, 0, 0, 0, 1791, 0, 0, 0, 0, 0, 250, 2500000, 2500000, 0, 0, 200, 0, 0, 4096, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8607.57, 751.41, 0, 'Gepflegt zerlegt', 'Erledigt 20 Spieler im PVP', 'Noch niemand hat eine Kneipenschlägerei geschadet. Also stuerzt euch mitten hinein.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Erledigt 20 Spieler im PVP', 'Fuehrt ihr meinen Auftrag aus?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800502, 2, 80, 80, -1, 0, 1, 0, 690, 0, 0, 0, 0, 0, 250, 50000, 50000, 0, 0, 0, 0, 2187, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2592, 2589, 1475, 0, 0, 0, 10, 10, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die neue Postlieferung', '$N bitte liefert diesen Stapel Briefe an Johann Orrig vor Orgrimmar.', 'Diese Briefe muessen unbedingt Johann Orrig zugestellt werden. Sie enthalten wichtige Nachrichten unserer Mitglieder des Stammes. Ihr findet ihn vor Orgrimmar. ', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Liefert den Stapel Briefe an Orrig vor Orgrimmar.', 'Bringt Ihr ihm die benötigten Briefe?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2187, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800503, 2, 80, 80, -1, 0, 1, 0, 1101, 0, 0, 0, 0, 0, 250, 50000, 50000, 0, 0, 0, 0, 2187, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2592, 2589, 1475, 0, 0, 0, 10, 10, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8607.57, 751.41, 0, 'Die neue Postlieferung', '$N bitte liefert diesen Stapel Briefe an Pi von Haar in Sturmwind.', 'Diese Briefe muessen unbedingt Pi von Haar in Sturmwind zugestellt werden. Sie enthalten wichtige Nachrichten unserer Mitglieder des Stammes. Ihr findet Pi von Haar auf dem Kathedralenplatz.', '', 'Kommt doch morgen wieder um mir weiterzuhelfen.', 'Liefert den Stapel Briefe an Pi von Haar in Sturmwind.', 'Bringt Ihr ihm die benötigten Briefe?', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2187, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800501, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 0, 250, 400000, 4000000, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 25423, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tötet den Verschlinger der Seelen ', 'Tötet den Verschlinger der Seelen', 'Dies Bedarf keiner langen Erklärung! Tötet den Verschlinger der Seelen', '', 'Ich danke Euch', 'Tötet den Verschlinger der Seelen', 'Bringt Ihr mir die benötigten Dinge?', 36502, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(799999, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800000, 250, 500000, 500000, 0, 0, 0, 0, 700500, 0, 0, 0, 0, 100, 200000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Der Gegenstand', 'Liefert diesen Gegenstand an einen Händler in Dalaran.', '$N, Liefert diesen Gegenstand an einen Händler in Dalaran. Gerüchten zufolge steht dieser eine bestimmte Händler im Untergrund von Dalaran. Schaut Euch dort doch einfach um und bringt im diesen Stein.', '', 'Ich danke Euch für diese Gabe.', 'Bringt ihr mir etwas von Wert?', 'Bringt diesen Stein zu einem Händler in Dalaran.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800000, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800001, 250, 5000000, 5000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Der Anfang', 'Liefert 20 Goldbarren an mich um euren Ehrgeiz und Euer Interesse zu beweisen.', 'Guten Tag $N. Ich habe von einem Volk gehört das in einem entlegenen Gebiet von Azeroth wohnt. Um mit diesem Volk in Kontakt treten zu können, bedarf es jedoch \r\neines kleinen Oboluses. Bringt mir 20 Goldbarren und ich werde Euch den Standort verraten.', 'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.', 'Ich danke Euch. Lasst mich nun den Standort verraten.', 'Bringt Ihr mir die 20 Goldbarren?', 'Bringt die Goldbarren zurück zu Thedrium Wyrmbräu um den Standort zu erfahren.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3577, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800001, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800002, 250, 10000000, 10000000, 0, 0, 0, 0, 38186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Der Begin einer neuen Reise', 'Bringt den Astralen Kredit zu Extator Magista', 'Bringt den Astralen Kredit zu Extator Magista und zeigt ihm sofort Eure Bereitschaft sich Ihm anzuschliessen. Herr Magista befindet sich im Gebirge zwischen den Grizzlyhügeln sowie dem Heulenden Fjord.', '', 'Nun denn. Dann wollen wir sehen was ihr in eurem langen Leben gelernt habt.', 'Lasst Euch Zeit. Extator wird nicht weglaufen.', 'Bringt den Astralen Kredit zu Extator Magista.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38186, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Eine neue Reise beginnt.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800002, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800003, 150, 5000000, 7500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49426, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 571, 3465.48, -3226.91, 0, 'Die erste Prüfung', 'Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe.', 'Dies ist Eure erste Prüfung. Es wird eine leichte Aufgabe sein. Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe. Wir müssen ein Zeichen setzen, dass trotz unserer aktuellen Lage mit uns zu rechnen ist.', 'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.', 'Ihr habt die erste Prüfung gemeistert. Lasst uns die Nächste beginnen.', 'Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe.', 'Kehrt zu Extator Magista zurück um Eure Belohnung zu erhalten.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5128, 2799, 4306, 0, 0, 0, 20, 20, 30, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800003, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800004, 250, 1000000, 1000000, 0, 0, 3000, 2, 0, 0, 0, 10, 0, 0, 49908, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die zweite Prüfung', 'Tötet 10 gegnerische Spieler', 'Bei der zweiten Prüfung wird Eure Kampffähigkeit gegen ebenbürtige Gegner auf die Probe gestellt. Tretet gegen 10 Spieler an um die Pruefung abzuschliessen.', 'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.', 'Ihr nähert Euch langsam dem Ziel.', 'Tötet 10 gegnerische Spieler, sonst braucht Ihr Euch erst gar nicht mehr hertrauen!', 'Kehrt zurück um die Pruefung abzuschließen.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800004, 2, 80, 80, -1, 0, 1, 0, 1791, 0, 0, 0, 0, 800005, 250, 100000, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43102, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die dritte Pruefung', 'Bringt mir 10 boreanische Leder und 10 Wollverbände um mich zu unterstuetzen.', 'Mein Volk muss leiden, bringt mir daher die benötigten Materialien, damit ich diese zu meinem Volk bringen kann.', '', 'Ich danke Euch.', 'Bringt mir 10 boreanische Leder und 10 Wollverbände um mich zu unterstuetzen.', 'Kehrt zurück um Eure Belohnung abzuholen.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33568, 3530, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800005, 2, 80, 80, -1, 62, 1, 0, 1791, 0, 0, 0, 0, 800006, 250, 5000000, 5000000, 0, 0, 0, 0, 44680, 32968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19364, 19363, 19360, 19356, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Die Aufnahme', 'Bringt die Schriftensammlung zu Destro MMOwning. Tötet zusätzlich Geißelfuerst Tyrannus, Den Verschlinger der Seelen sowie Sartharion.', 'Bringt die Schriftensammlung zu Destro Mowning. Ihr findet Ihn an der Küste von Westfall. Aus seiner Sicht gesehen schaut er auf ein Schriffswrack. Meist hört er im Wind die Schreie von Murlockreaturen. Zusätzlich müsst ihr Geißelfürst Tyrannus, Den Verschlinger der Seelen sowie Sartharion töten.', '', 'Ich danke Euch.', 'Bringt die Schriftensammlung zu Destro Mowning.', 'Destro Mowning ist erfreut Euch zu sehen. Tötet zusätzlich Geißelfürst Tyrannus, Den Verschlinger der Seelen sowie Sartharion.', 36502, 28860, 36658, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44680, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 1000, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quest_template_addon`
--

CREATE TABLE IF NOT EXISTS `quest_template_addon` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllowableClasses` int(10) unsigned NOT NULL DEFAULT '0',
  `SourceSpellID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestID` mediumint(8) NOT NULL DEFAULT '0',
  `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT '0',
  `RewardMailTemplateID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardMailDelay` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `ProvidedItemCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest_template_addon`
--

REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(802002, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800513, 80, 2047, 0, 802002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(802001, 80, 2047, 0, 802000, 802003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(802000, 80, 2047, 0, 800005, 802001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800511, 80, 2047, 0, 802002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800512, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800510, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800007, 80, 2047, 0, 800006, 800008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800509, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(800006, 80, 2047, 0, 800005, 800007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800506, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800507, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(800508, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800500, 80, 2047, 0, 800004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800504, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800505, 80, 2047, 0, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800502, 80, 2047, 0, 800004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(800503, 80, 2047, 0, 800004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(800501, 80, 2047, 0, 800004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(799999, 80, 2047, 0, 0, 800000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(800000, 80, 2047, 0, 799999, 800001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800001, 80, 2047, 0, 800000, 800002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(800002, 80, 2047, 0, 800001, 800003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800003, 80, 2047, 0, 800002, 800004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800004, 80, 2047, 0, 800003, 800005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800005, 80, 2047, 0, 800004, 800006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;