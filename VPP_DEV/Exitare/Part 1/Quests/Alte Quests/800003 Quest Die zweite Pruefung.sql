/*Zweite Pruefung*/

DELETE FROM `world`.`quest_template` where `id` = 800003;
DELETE FROM `world`.`creature_queststarter` WHERE `quest` = 800003;
DELETE FROM `world`.`creature_questender` WHERE `quest` = 800003;
DELETE FROM `world`.`gameobject_questender` WHERE `quest` = 800003;
DELETE FROM `world`.`gameobject_queststarter` WHERE `quest` = 800003;
INSERT INTO `world`.`creature_questender` (`id`,`quest`) VALUES ('800001','800003');
INSERT INTO `world`.`creature_queststarter` (`id`,`quest`) VALUES ('800001','800003');
INSERT INTO `world`.`gameobject_questender` (`id`,`quest`) VALUES ('800001','800003');
INSERT INTO `world`.`gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800003');



REPLACE INTO `world`.`quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
`RewardChoiceItemQuantity1`,
`RewardChoiceItemQuantity2`,`RewardChoiceItemQuantity3`,`RewardChoiceItemQuantity4`,`RewardChoiceItemQuantity5`,
`RewardChoiceItemQuantity6`,`RewardFactionID1`,`RewardFactionID2`,`RewardFactionID3`,`RewardFactionID4`,
`RewardFactionID5`,`RewardFactionValue1`,`RewardFactionValue2`,
`RewardFactionValue3`,`RewardFactionValue4`,`RewardFactionValue5`,`RewardFactionOverride1`,`RewardFactionOverride2`,
`RewardFactionOverride3`,`RewardFactionOverride4`,`RewardFactionOverride5`,`PointMapId`,`PointX`,`PointY`,
`PointOption`,`LogTitle`,`LogDescription`,`QuestDescription`,`EndText`,`OfferRewardText`,`RequestItemsText`,
`QuestCompletionLog`,`RequiredNpcOrGo1`,`RequiredNpcOrGo2`,`RequiredNpcOrGo3`,`RequiredNpcOrGo4`,`RequiredNpcOrGoCount1`,
`RequiredNpcOrGoCount2`,`RequiredNpcOrGoCount3`,`RequiredNpcOrGoCount4`,`RequiredSourceItemId1`,`RequiredSourceItemId2`,
`RequiredSourceItemId3`,`RequiredSourceItemId4`,`RequiredSourceItemCount1`,`RequiredSourceItemCount2`,
`RequiredSourceItemCount3`,`RequiredSourceItemCount4`,`RequiredItemId1`,`RequiredItemId2`,`RequiredItemId3`,
`RequiredItemId4`,`RequiredItemId5`,`RequiredItemId6`,`RequiredItemCount1`,`RequiredItemCount2`,`RequiredItemCount3`,
`RequiredItemCount4`,`RequiredItemCount5`,`RequiredItemCount6`,`Unknown0`,`ObjectiveText1`,`ObjectiveText2`,`ObjectiveText3`,
`ObjectiveText4`,`DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild`) 
VALUES
(/* ID  */800003,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */83,
/* Spieleranzahl? */1,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */1791,
/* Benötigter Skillid */0,
/* Benötigte Skillpunkte */0,
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */800002,
/* Nächste QUest */800004,
/* Welche Quests konkurrien miteinander`?*/0,
/*  Nachfolgequestkette*/800004,
/* XP */250,
/* Gold  */1000000,
/*  Gold auf Maxlevel */1000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */3000,
/* Ehrenmultiplier */2,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/0,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */10,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/49908,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */2,
/* BelohnungMenge2 */0,
/* MEnge3 */0,
/* Menge4 */0,
/* Belohnngauswahlitem1 */0,
/*  Auswahlitem2*/0,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/0,
/*  */0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */0,
/* Rufpunkte bei Fraktion mit id */0,
/*  */0,
/*  */0,
/*  */0,
/* Rufpunkte bei Fraktion 5 mit id */0,
/* Ruferhöhung um bei Fraktion 1 */0,
/*  */0,
/*  */0,
/*  */0,
/*  Ruferhöhung bei Fraktion 5*/0,
/* RewardFactionOVerride1 */0,
/* Overriode2 */0,
/* 3 */0,
/* 4 */0,
/* 5 */0,
/*  Punkt auf der Map wo die Quest angezeigt wird MapID*/0,
/* X-Koordinate */0,
/* Y KOord */0,
/* Point OPtion */0,
/* Titel  */'Die zweite Prüfung',
/* Kurzbeschreibung */'Tötet 10 gegnerische Spieler',
/* Lange Beschreibung *//*  */'Bei der zweiten Prüfung wird Eure Kampffähigkeit gegen ebenbürtige Gegner auf die Probe gestellt. Tretet gegen 10 Spieler an um die Pruefung abzuschliessen.',
/* EndText unwichtig */'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.',
/* Npc sagt zu SPieler */'Ihr nähert Euch langsam dem Ziel.',
/* Requestitem TExt, du brauchst noch Items trext */'Tötet 10 gegnerische Spieler, sonst braucht Ihr Euch erst gar nicht mehr hertrauen!',
/* Questziel erreicht anzeige text  Return to [param]*/'Kehrt zurück um die Pruefung abzuschließen.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'0','0','0','0', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */