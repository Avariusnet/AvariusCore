/* Die GesteinsTinktur */

DELETE FROM `world`.`quest_template` where `id` = 800006;
INSERT INTO `world`.`creature_questender` (`id`,`quest`) VALUES ('800005','800006');
INSERT INTO `world`.`creature_queststarter` (`id`,`quest`) VALUES ('800005','800006');
INSERT INTO `world`.`gameobject_questender` (`id`,`quest`) VALUES ('800005','800006');
INSERT INTO `world`.`gameobject_queststarter` (`id`,`quest`) VALUES ('800005','800006');

INSERT INTO `world`.`points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Data`, `Name`, `VerifiedBuild`) VALUES ('800006', '1117.86', '-455.74', '7', '99', '0', 'Gesteinstinktur', '0');



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
(/* ID  */800006,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */83,
/* Spieleranzahl? */0,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */1791,
/* Benötigter Skillid */0,
/* Benötigte Skillpunkte */0,
/* Benötigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf für Qeust */0,
/* MAximal benötigter Ruf  für Quest*/0,
/* Vorangehende Quest */800005,
/* Nächste QUest */800007,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800007,
/* XP */250,
/* Gold  */15000000,
/*  Gold auf Maxlevel */15000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/0,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/0,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */0,
/* BelohnungMenge2 */0,
/* MEnge3 */0,
/* Menge4 */0,
/* Belohnngauswahlitem1 */15198,
/*  Auswahlitem2*/15199,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/1,
/*  */1,
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
/*  Punkt auf der Map wo die Quest angezeigt wird MapID*/230,
/* X-Koordinate */1117.86,
/* Y KOord */-455.74,
/* Point OPtion */0,
/* Titel  */'Die Gesteinstinktur',
/* Kurzbeschreibung */'Bringt 3 Sulfuronbloecke sowie 3000 Ehrenpunkte zu Sophie Mondhain',
/* Lange Beschreibung *//*  */'Wie ihr seht ist mein Mann mit der Worgenkrankheit befallen. Ich habe von einer Tinktur gehoert, fuer welche man in die Tiefen des geschmolzenen Kerns reissen muss.
Bringt mir von dort 3 Sulfuronbloecke und zusaetzlich 3000 Ehrenpunkte. Beachtet wohl, Sulfuronbloecke sind ein aeußert seltenes Gut. Dem Vernehmen nach sind die Sulfuronbloecke im Geschmolzenen Kern zu finden.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt die Sulfuronbloecke, sowie die Ehrenpunkte zu Sophie Mondhain.',
/* Questziel erreicht anzeige text  Return to [param]*/'Sophie Mondhain erwartet Euch sehnsuechtig.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
17203,43308,0,0,0,0, /* Benötigte Items  */
3,3000,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,   /*`DetailsEmote1` */
0, /*DetailsEmote2` */
0, /*`DetailsEmote3` */
0, /*`DetailsEmote4` */
0, /*`DetailsEmoteDelay1`*/
0, /*`DetailsEmoteDelay2`*/
0, /*`DetailsEmoteDelay3` */
0,/* `DetailsEmoteDelay4` */
0, /*`EmoteOnIncomplete` */
0,/* `EmoteOnComplete` */
21, /*`OfferRewardEmote1` */
0,/* `OfferRewardEmote2` */
0, /*`OfferRewardEmote3` */
0, /*`OfferRewardEmote4` */
1000, /*`OfferRewardEmoteDelay1` */
0, /*`OfferRewardEmoteDelay2` */
0, /*`OfferRewardEmoteDelay3` */
0,/* `OfferRewardEmoteDelay4` */
1);  /*`VerifiedBuild` ); */
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */