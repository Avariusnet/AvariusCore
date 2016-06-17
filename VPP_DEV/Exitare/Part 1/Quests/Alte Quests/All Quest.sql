/* VOGELstartquest */

DELETE FROM `quest_template` where `id` = 802002;
DELETE FROM `creature_queststarter` WHERE `quest` = 800008;
DELETE FROM `creature_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800008;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800008','802002');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800008','802002');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800008','802002');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800008','802002');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */802002,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */500000,
/*  Gold auf Maxlevel */500000,
/*  Nicht ändern*/0,
/* Reward Spell Cast */19838,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/32,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/0,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */10,
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
/* Menge von 6 */1,
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
/* Titel  */'Der Vogel',
/* Kurzbeschreibung */'Toetet Sturmflamme im Krater von Ungoro',
/* Lange Beschreibung */'Guten Tag $N, $B Sturmflamme hat sich lange genug vor seinen Aufgaben ferngehalten. Er sollte den Berg unter Kontrolle halten, doch diese Aufgabe scheint ihm nun ueber den Kopf zu wachsen. Ihr muesst ihn liquidieren. Sofort!',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Toete Sturmflamme noch heute!',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
9376,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */



/* Finde Kupferpulver */

DELETE FROM `quest_template` where `id` = 800513;
DELETE FROM `creature_queststarter` WHERE `quest` = 800008;
DELETE FROM `creature_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800008;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800008','800513');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800008','800513');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800008','800513');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800008','800513');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800513,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */802002,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */0,
/*  Gold auf Maxlevel */0,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/4096,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/52006,
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
/* Menge von 6 */1,
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
/* Titel  */'Kupferpulver',
/* Kurzbeschreibung */'Bringt mir 30 Kupferpulver',
/* Lange Beschreibung */'Ich beoetige Kupferpulver fuer meinen strahlenden Glanz des Gefieders',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir 30 Kupferpulver.',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
24186,0,0,0,0,0, /* Benötigte Items  */
20,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Grüne Hügel Teil2 */

DELETE FROM `quest_template` where `id` = 802001;
DELETE FROM `creature_queststarter` WHERE `quest` = 800009;
DELETE FROM `creature_questender` WHERE `quest` = 800009;
DELETE FROM `gameobject_questender` WHERE `quest` = 800009;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800009;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800009','802001');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800009','802001');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800009','802001');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800009','802001');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */802001,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */802000,
/* Nächste QUest */802002,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/802002,
/* XP */250,
/* Gold  */750000,
/*  Gold auf Maxlevel */750000,
/*  Nicht ändern*/0,
/* Reward Spell Cast */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/32,
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
/* Belohnngauswahlitem1 */36979,
/*  Auswahlitem2*/36985,
/* Item3 */37842,
/* Item4 */37826,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/1,
/*  */1,
/*  */1,
/*  */1,
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
/* Titel  */'Die Gruenen Huegel Teil 2',
/* Kurzbeschreibung */'Bringt mir die Seiten 11,14,16,18,20 der Gruenen Huegel des Schlingendorntals',
/* Lange Beschreibung */'Die ersten fuenf Seiten waren sehr spannend und ereignisreich. Koennt ihr mir die weiteren Seiten bringen?',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir die Seiten 11,14,16,18,20 der Gruenen Huegel des Schlingendorntals',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
2735,2738,2740,2742,2744,0, /* Benötigte Items  */
1,1,1,1,1,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Grüne Hügel */

DELETE FROM `quest_template` where `id` = 802000;
DELETE FROM `creature_queststarter` WHERE `quest` = 800009;
DELETE FROM `creature_questender` WHERE `quest` = 800009;
DELETE FROM `gameobject_questender` WHERE `quest` = 800009;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800009;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800009','802000');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800009','802000');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800009','802000');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800009','802000');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */802000,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */800005,
/* Nächste QUest */802001,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/802001,
/* XP */250,
/* Gold  */1000000,
/*  Gold auf Maxlevel */1000000,
/*  Nicht ändern*/0,
/* Reward Spell Cast */19838,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/32,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/5740,
/*  Belohnungitem2*/43015,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */10,
/* BelohnungMenge2 */1,
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
/* Menge von 6 */1,
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
/* Titel  */'Die Gruenen Huegel Teil 1',
/* Kurzbeschreibung */'Bringt mir die Seiten 1,4,6,8,10 der Gruenen Huegel des Schlingendorntals',
/* Lange Beschreibung */'Ich bin sehr an Geschichten interessiert, deswegen bitte ich Euch, mir diese 5 Seiten zu bringen.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir die Seiten 1,4,6,8,10 der Gruenen Huegel des Schlingendorntals',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
2725,2728,2730,2732,2734,0, /* Benötigte Items  */
1,1,1,1,1,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Federquest */

DELETE FROM `quest_template` where `id` = 800511;
DELETE FROM `creature_queststarter` WHERE `quest` = 800008;
DELETE FROM `creature_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_questender` WHERE `quest` = 800008;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800008;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800008','800511');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800008','800511');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800008','800511');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800008','800511');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800511,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */802002,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */100000,
/*  Gold auf Maxlevel */100000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/4096,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/40752,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */10,
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
/* Menge von 6 */1,
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
/* Titel  */'Federn fuer mein Kleid',
/* Kurzbeschreibung */'Bringt mir 30 raue Geiernfedern.',
/* Lange Beschreibung */'Bitte helft mir, ich benoetige neue Federn fuer mein Gefieder.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir 30 raue Geiernfedern.',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
555,0,0,0,0,0, /* Benötigte Items  */
30,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Daily Sammelwut */

DELETE FROM `quest_template` where `id` = 800512;
DELETE FROM `creature_queststarter` WHERE `quest` = 800507;
DELETE FROM `creature_questender` WHERE `quest` = 800507;
DELETE FROM `gameobject_questender` WHERE `quest` = 800507;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800507;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800007','800512');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800007','800512');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800007','800512');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800007','800512');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800512,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */10000000,
/*  Gold auf Maxlevel */10000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag Weekly, Daily*/4096,
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
/* Belohnngauswahlitem1 */3860,
/*  Auswahlitem2*/36913,
/* Item3 */41163,
/* Item4 */3577,
/* Item5 */2840,
/* Item6  */0,
/*  Menge von 1*/5,
/*  */5,
/*  */2,
/*  */8,
/*  */12,
/* Menge von 6 */1,
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
/* Titel  */'Sammelwut',
/* Kurzbeschreibung */'Sammelt 100 Staehlerne Pfeilspitzen, 75 Netherstoff und taetet 10 Sonnenschuppenkreischer, 15 Fleischreißerhyjaenen, 20 Kluftmoosgiftspucker, 15 Blutsichelfelzhetzer.',
/* Lange Beschreibung */'Helft uns bitte beim Sammeln dieser wichtigen Gegenstaende. Wir benoetigen diese wirklich dringend.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Sammelt 100 Staehlerne Pfeilspitzen, 75 Netherstoff und tötet 10 Sonnenschuppenkreischer, 15 Fleischreißerhyjaenen, 20 Kluftmoosgiftspucker, 15 Blutsichelfelzhetzer.',
/* Requestitem TExt, du brauchst noch Items trext */'Du hast leider noch nicht alle benoetigten Dinge zusammen.',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
3255,4127,4007,21423, /* RequiredNPC oR Gameobejt 1-4  */
10,15,20,15, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
5123,21877,0,0,0,0, /* Benötigte Items  */
100,75,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Toete Orig */

DELETE FROM `quest_template` where `id` = 800510;
DELETE FROM `creature_queststarter` WHERE `quest` = 800507;
DELETE FROM `creature_questender` WHERE `quest` = 800507;
DELETE FROM `gameobject_questender` WHERE `quest` = 800507;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800507;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800007','800510');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800007','800510');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800007','800510');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800007','800510');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800510,
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
/* Benätigte Fraktionsid1 */0,
/* Benötigte Fraktionsid2 */0,
/* Rufid1höhe */0,
/* Rufid2höhe */0,
/* Minimalerbenötigter RUf */0,
/* MAximal benötigter Ruf */0,
/* Minimalerbenötigter Ruf */0,
/* MAximal benötigter Ruf */0,
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */1000000,
/*  Gold auf Maxlevel */1000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
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
/* Menge von 6 */1,
/* Rufpunkte bei Fraktion mit id */1090,
/*  */0,
/*  */0,
/*  */0,
/* Rufpunkte bei Fraktion 5 mit id */0,
/* Ruferhöhung um bei Fraktion 1 */250,
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
/* Titel  */'Orrig der dunkle Schatten ',
/* Kurzbeschreibung */'Tötet Orrig den dunklen Schatten.',
/* Lange Beschreibung */'Wir können Orrig nicht weiter am Leben lassen. Er ist eine Gefahr für unser ganzes Volk. Vernichtet ihn. Orrig befindet sich an einer der 2 Brücken die über die Schluchten des Gebirgspass der toten Winde führen. ',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Tötet Orrig den dunklen Schatten.',
/* Questziel erreicht anzeige text  Return to [param]*/'Werdet ihr den Auftrag aufsführen?',
800010,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Essenz der ewigen 5 */

DELETE FROM `quest_template` where `id` = 800007;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800005','800007');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800005','800007');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800005','800007');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800005','800007');


REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800007,
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
/* Vorangehende Quest */800006,
/* Nächste QUest */800008,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800008,
/* XP */250,
/* Gold  */25000000,
/*  Gold auf Maxlevel */25000000,
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
/* Belohnngauswahlitem1 */34535,
/*  Auswahlitem2*/10822,
/* Item3 */8499,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/1,
/*  */1,
/*  */1,
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
/* Titel  */'Die Essenz der ewigen Fünf',
/* Kurzbeschreibung */'Bringt die Essenzen der ewigen Fünf zu Sophie Mondhain.',
/* Lange Beschreibung *//*  */'$N,$BDie Tinktur der Sulforonblöcke war leider ein Fehlschlag. Ein  Vertrauter erzählte mir aber von Essenzen der ewigen Fünf. Diese sollen ueber magische Heilkräfte verfügen. Bitte helft mir und bringt mir diese 5 Essenzen. Die Essenzen der ewigen Fünf sollen sich im Besitz der 5 großen Weltendrachen befinden. Ein Name, an den ich mich errinern kann, war glaube ich Smariss.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt die Essenzen der ewigen Fünf zu Sophie Mondhain.',
/* Questziel erreicht anzeige text  Return to [param]*/'Sophie Mondhain erwartet Euch sehnsüchtig.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
700502,700503,700504,700505,700506,0, /* Benötigte Items  */
1,1,1,1,1,0, /* Anzahl der Items   */
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

/* Froststoff sammeln */

DELETE FROM `quest_template` where `id` = 800509;
DELETE FROM `creature_queststarter` WHERE `quest` = 800006;
DELETE FROM `creature_questender` WHERE `quest` = 800006;
DELETE FROM `gameobject_questender` WHERE `quest` = 800006;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800006;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800006','800509');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800006','800509');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800006','800509');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800006','800509');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800509,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */7000000,
/*  Gold auf Maxlevel */7000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
/* Special Flag */1,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/49426,
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
/* Titel  */'Froststoff sammeln ',
/* Kurzbeschreibung */'Sammelt 100 Froststoff',
/* Lange Beschreibung */'Wir benötigen Froststoff zum Weben unserer Kleidung. Bitte helf uns dabei.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch',
/* Requestitem TExt, du brauchst noch Items trext */'Sammelt 100 Froststoff',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt Ihr mir die benötigten Dinge?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
33470,0,0,0,0,0, /* Benötigte Items  */
1,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Die GesteinsTinktur */

DELETE FROM `quest_template` where `id` = 800006;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800005','800006');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800005','800006');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800005','800006');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800005','800006');

REPLACE INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Data`, `Name`, `VerifiedBuild`) VALUES ('800006', '1117.86', '-455.74', '7', '99', '0', 'Gesteinstinktur', '0');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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


/* Daily König der Zwerge */

DELETE FROM `quest_template` where `id` = 800506;
DELETE FROM `creature_queststarter` WHERE `quest` = 800504;
DELETE FROM `creature_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800504;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800506');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800004','800506');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800506');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800004','800506');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800506,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */0,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */690,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */50000000,
/*  Gold auf Maxlevel */50000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/32832,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */20,
/*  Belohnungitem1*/0,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */0,
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
/*  */ 0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Zwergenfilet',
/* Kurzbeschreibung */'$N, toetet Magni Bronzebart',
/* Lange Beschreibung */'$N, $B habt ihr Lust auf Zwergenfilet? Toetet Magni Bronzebart, den Koenig der verachtenswerten Zwerge.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Ihr seid wohl ein kleiner Feigling?',
/* Questziel erreicht anzeige text  Return to [param]*/'Fuehrt ihr meinen Auftrag aus?',
2784,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Daily Thrall von Orgrimmar */

DELETE FROM `quest_template` where `id` = 800507;
DELETE FROM `creature_queststarter` WHERE `quest` = 800504;
DELETE FROM `creature_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800504;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800507');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800004','800507');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800507');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800004','800507');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800507,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */0,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */1101,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */50000000,
/*  Gold auf Maxlevel */50000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */1,
/* Gezauberte Zauber */0,
/*  Flag*/32832,
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
/* Belohnngauswahlitem1 */0,
/*  Auswahlitem2*/0,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/0,
/*  */ 0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Hordenmassaker',
/* Kurzbeschreibung */'$N, toetet Thrall von Orgrimmar',
/* Lange Beschreibung */'$N, $B habt ihr Lust auf ein Hordenmassaker? Toetet Thrall von Orgrimmar , den Hauptling der blutruenstigen Horde.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Ihr seid wohl ein kleiner Feigling?',
/* Questziel erreicht anzeige text  Return to [param]*/'Fuehrt ihr meinen Auftrag aus?',
4949,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */



/* Daily König der Menschen */

DELETE FROM `quest_template` where `id` = 800508;
DELETE FROM `creature_queststarter` WHERE `quest` = 800504;
DELETE FROM `creature_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800504;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800508');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800004','800508');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800508');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800004','800508');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800508,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */10,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */690,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */50000000,
/*  Gold auf Maxlevel */50000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/32832,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */20,
/*  Belohnungitem1*/0,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */0,
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
/*  */ 0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Tot den Menschen',
/* Kurzbeschreibung */'$N, toetet Varian Wrynn',
/* Lange Beschreibung */'$N, $B habt ihr Lust den Menschen Leid zuzufuegen? Toetet Varian Wrynn, den Koenig der hochnässigen Menschen.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Ihr seid wohl ein kleiner Feigling?',
/* Questziel erreicht anzeige text  Return to [param]*/'Fuehrt ihr meinen Auftrag aus?',
29611,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

DELETE FROM `quest_template` where `id` = 800500;
DELETE FROM `creature_queststarter` WHERE `quest` = 800500;
DELETE FROM `creature_questender` WHERE `quest` = 800500;
DELETE FROM `gameobject_questender` WHERE `quest` = 800500;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800500;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800500');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800500');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800500');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800500');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800500,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */800004,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */1000000,
/*  Gold auf Maxlevel */1000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */1000,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
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
/* Belohnngauswahlitem1 */43102,
/*  Auswahlitem2*/49908,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/1,
/*  */1,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Mehr Hilfe fuer das Volk',
/* Kurzbeschreibung */'Liefert 50 Netherstoff und 30 Raptorkrallen an mich.',
/* Lange Beschreibung */'Wir haben einen taeglichen Bedarf an verschiedenen Guetern. Liefert 50 Netherstoff und 30 Raptorkrallen an mich.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Liefert 50 Netherstoff und 30 Raptorkrallen an mich.',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt Ihr mir die benötigten Dinge?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
21877,29567,0,0,0,0, /* Benötigte Items  */
50,30,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Naxx Daily  */

DELETE FROM `quest_template` where `id` = 800504;
DELETE FROM `creature_queststarter` WHERE `quest` = 800504;
DELETE FROM `creature_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_questender` WHERE `quest` = 800504;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800504;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800504');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800004','800504');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800504');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800004','800504');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800504,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */5000000,
/*  Gold auf Maxlevel */5000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/49426,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */1,
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
/*  */ 0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* X-Koordinate */-8607.57,
/* Y KOord */751.41,
/* Point OPtion */0,
/* Titel  */'Naxxramas Rally',
/* Kurzbeschreibung */'$N bitte toetet Saphiron und Kel´Thuzad.',
/* Lange Beschreibung */'$N,$B bittet entledigt Euch diesen 2 Bestien. Sie zerstören unsere Dörfer und töten unsere Kinder.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bitte toetet Saphiron und Kel´Thuzad.',
/* Questziel erreicht anzeige text  Return to [param]*/'Fuehrt ihr meinen Auftrag aus?',
15989,15990,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,1,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* PVP Daily  */

DELETE FROM `quest_template` where `id` = 800505;
DELETE FROM `creature_queststarter` WHERE `quest` = 800004;
DELETE FROM `creature_questender` WHERE `quest` = 800004;
DELETE FROM `gameobject_questender` WHERE `quest` = 800004;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800004;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800505');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800004','800505');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800505');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800004','800505');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800505,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */0,
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
/* Vorangehende Quest */800005,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */5000000,
/*  Gold auf Maxlevel */5000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */500,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */20,
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
/* Belohnngauswahlitem1 */0,
/*  Auswahlitem2*/0,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/0,
/*  */ 0,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* X-Koordinate */-8607.57,
/* Y KOord */751.41,
/* Point OPtion */0,
/* Titel  */'Gepflegt zerlegt',
/* Kurzbeschreibung */'Erledigt 20 Spieler im PVP',
/* Lange Beschreibung */'Noch niemand hat eine Kneipenschlaegerei geschadet. Also stuerzt euch mitten hinein.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Erledigt 20 Spieler im PVP',
/* Questziel erreicht anzeige text  Return to [param]*/'Fuehrt ihr meinen Auftrag aus?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Orig Daily  */

DELETE FROM `quest_template` where `id` = 800502;
DELETE FROM `creature_queststarter` WHERE `quest` = 800502;
DELETE FROM `creature_questender` WHERE `quest` = 800502;
DELETE FROM `gameobject_questender` WHERE `quest` = 800502;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800502;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800002','800502');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800502');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800002','800502');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800502');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800502,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */1,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */690,
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
/* Vorangehende Quest */800004,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */50000,
/*  Gold auf Maxlevel */50000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */2187,
/* Anzahl der vergebenden Items */1,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
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
/* Belohnngauswahlitem1 */2592,
/*  Auswahlitem2*/2589,
/* Item3 */1475,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/10,
/*  */ 10,
/*  */10,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Die neue Postlieferung',
/* Kurzbeschreibung */'$N bitte liefert diesen Stapel Briefe an Johann Orrig vor Orgrimmar.',
/* Lange Beschreibung */'Diese Briefe muessen unbedingt Johann Orrig zugestellt werden. Sie enthalten wichtige Nachrichten unserer Mitglieder des Stammes. ',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Liefert den Stapel Briefe an Orrig vor Orgrimmar.',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt Ihr ihm die benötigten Briefe?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
2187,0,0,0,0,0, /* Benötigte Items  */
1,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Pihaar Daily  */

DELETE FROM `quest_template` where `id` = 800503;
DELETE FROM `creature_queststarter` WHERE `quest` = 800503;
DELETE FROM `creature_questender` WHERE `quest` = 800503;
DELETE FROM `gameobject_questender` WHERE `quest` = 800503;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800503;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800003','800503');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800503');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800003','800503');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800503');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800503,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */1,
/* Zeitlimit */0,
/* Welche Classen? */2047,
/* Welche Rassen? */1101,
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
/* Vorangehende Quest */800004,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */50000,
/*  Gold auf Maxlevel */50000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */2187,
/* Anzahl der vergebenden Items */1,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
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
/* Belohnngauswahlitem1 */2592,
/*  Auswahlitem2*/2589,
/* Item3 */1475,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/10,
/*  */ 10,
/*  */10,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* X-Koordinate */-8607.57,
/* Y KOord */751.41,
/* Point OPtion */0,
/* Titel  */'Die neue Postlieferung',
/* Kurzbeschreibung */'$N bitte liefert diesen Stapel Briefe an Pi von Haar in Sturmwind.',
/* Lange Beschreibung */'Diese Briefe muessen unbedingt Pi von Haar in Sturmwind zugestellt werden. Sie enthalten wichtige Nachrichten unserer Mitglieder des Stammes. ',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Kommt doch morgen wieder um mir weiterzuhelfen.',
/* Requestitem TExt, du brauchst noch Items trext */'Liefert den Stapel Briefe an Pi von Haar in Sturmwind.',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt Ihr ihm die benötigten Briefe?',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
2187,0,0,0,0,0, /* Benötigte Items  */
1,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Verschlinger der Seelen */

DELETE FROM `quest_template` where `id` = 800501;
DELETE FROM `creature_queststarter` WHERE `quest` = 800501;
DELETE FROM `creature_questender` WHERE `quest` = 800501;
DELETE FROM `gameobject_questender` WHERE `quest` = 800501;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800501;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800501');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800501');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800501');
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800501');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800501,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */800004,
/* Nächste QUest */0,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/0,
/* XP */250,
/* Gold  */7000000,
/*  Gold auf Maxlevel */7000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */0,
/* Anzahl der vergebenden Items */0,
/* Gezauberte Zauber */0,
/*  Flag*/4096,
/* Special Flag */1,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */0,
/*  Belohnungitem1*/49426,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */1,
/* BelohnungMenge2 */0,
/* MEnge3 */0,
/* Menge4 */0,
/* Belohnngauswahlitem1 */0,
/*  Auswahlitem2*/0,
/* Item3 */0,
/* Item4 */0,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/5,
/*  */5,
/*  */0,
/*  */0,
/*  */0,
/* Menge von 6 */1,
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
/* Titel  */'Toetet den Verschlinger der Seelen ',
/* Kurzbeschreibung */'Toetet den Verschlinger der Seelen',
/* Lange Beschreibung */'Dies Bedarf keiner langen Erklaerung! Toetet den Verschlinger der Seelen',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch',
/* Requestitem TExt, du brauchst noch Items trext */'Toetet den Verschlinger der Seelen',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt Ihr mir die benötigten Dinge?',
36502,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
1,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* 799999 Startquest */

DELETE FROM `quest_template` where `id` = 799999;
REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('700500','799999');
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800000','799999');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */799999,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */0,
/* Nächste QUest */800000,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800000,
/* XP */250,
/* Gold  */500000,
/*  Gold auf Maxlevel */500000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */700500,
/* Anzahl der vergebenden Items */1,
/* Gezauberte Zauber */0,
/*  Flag*/0,
/* Special Flag */0,
/* Titelbelohnung */0,
/* Benötige Spielertötungen */0,
/* Belohnung Talentpunkte */0,
/*Belohnung Arenapunkte  */100,
/*  Belohnungitem1*/200000,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */1,
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
/* Titel  */'Der Gegenstand',
/* Kurzbeschreibung */'Liefert diesen Gegenstand an einen Händler in Dalaran.',
/* Lange Beschreibung *//*  */'$N, Liefert diesen Gegenstand an einen Haendler in Dalaran. Gerüchten zufolge steht dieser eine bestimmte Haendler im Untergrund von Dalaran. Schaut Euch dort doch einfach um und bringt im diesen Stein.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch für diese Gabe.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt ihr mir etwas von Wert?',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt diesen Stein zu einem Haendler in Dalaran.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
0,0,0,0,0,0, /* Benötigte Items  */
0,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Der Anfang */

DELETE FROM `quest_template` where `id` = 800000;
DELETE FROM `creature_queststarter` WHERE `quest` = 800000;
DELETE FROM `creature_questender` WHERE `quest` = 800000;
DELETE FROM `gameobject_questender` WHERE `quest` = 800000;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800000;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800000','800000');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800000','800000');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800000','800000');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800000','800000');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800000,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */799999,
/* Nächste QUest */800001,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800001,
/* XP */250,
/* Gold  */5000000,
/*  Gold auf Maxlevel */5000000,
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
/*  Belohnungitem1*/200000,
/*  Belohnungitem2*/0,
/* Belohnungitem3 */0,
/* Belohnugnitem4 */0,
/* BelohungMenge */1,
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
/* Titel  */'Der Anfang',
/* Kurzbeschreibung */'Liefert 20 Goldbarren an mich um euren Ehrgeiz und Euer Interesse zu beweisen.',
/* Lange Beschreibung *//*  */'Guten Tag $N. Ich habe von einem Volk gehoert das in einem entlegenen Gebiet von Azeroth wohnt. Um mit diesem Volk in Kontakt treten zu können, bedarf es jedoch 
eines kleinen Oboluses. Bringt mir 20 Goldbarren und ich werde Euch den Standort verraten.',
/* EndText unwichtig */'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.',
/* Npc sagt zu SPieler */'Ich danke Euch. Lasst mich nun den Standort verraten.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt Ihr mir die 20 Goldbarren?',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt die Goldbarren zurück zu Thedrium Wyrmbräu um den Standort zu erfahren.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
3577,0,0,0,0,0, /* Benötigte Items  */
20,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */


/* Begin einer neuen REise */

DELETE FROM `quest_template` where `id` = 800001;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800001');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800000','800001');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800001');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800000','800001');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800001,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */800000,
/* Nächste QUest */800002,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800002,
/* XP */250,
/* Gold  */10000000,
/*  Gold auf Maxlevel */10000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */38186,
/* Anzahl der vergebenden Items */1,
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
/* Titel  */'Der Begin einer neuen Reise',
/* Kurzbeschreibung */'Bringt den Astralen Kredit zu Extator Magista',
/* Lange Beschreibung *//*  */'Bringt den Astralen Kredit zu Extator Magista und zeigt ihm sofort Eure Bereitschaft sich Ihm anzuschliessen. Herr Magista befindet sich im Gebirge zwischen den Grizzlyhügeln sowie dem Heulenden Fjord.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Nun denn. Dann wollen wir sehen was ihr in eurem langen Leben gelernt habt.',
/* Requestitem TExt, du brauchst noch Items trext */'Lasst Euch Zeit. Extator wird nicht weglaufen.',
/* Questziel erreicht anzeige text  Return to [param]*/'Bringt den Astralen Kredit zu Extator Magista.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
38186,0,0,0,0,0, /* Benötigte Items  */
1,0,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'Eine neue Reise beginnt.','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Die erste Pruefung */

DELETE FROM `quest_template` where `id` = 800002;
DELETE FROM `creature_questender` where `id` = 800001 and `quest` = 800002;
DELETE FROM `creature_queststarter` where `id` = 800001 and `quest` = 800002;
DELETE FROM `gameobject_questender` where `id` = 800001 and `quest` = 800002;
DELETE FROM `creature_queststarter` where `id` = 800001 and `quest` = 800002;


REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800002');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800002');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800002');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800002');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,
`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,
`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,
`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,
`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,
`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,
`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800002,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */800001,
/* Nächste QUest */800003,
/* Welche Quests konkurrien miteinander? */0,
/*  Nachfolgequestkette*/800003,
/* XP */150,
/* Gold  */5000000,
/*  Gold auf Maxlevel */7500000,
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
/*  Belohnungitem1*/49426,
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
/*  Punkt auf der Map wo die Quest angezeigt wird MapID*/571,
/* X-Koordinate */3465.476318,
/* Y KOord */-3226.914551,
/* Point OPtion */0,
/* Titel  */'Die erste Prüfung',
/* Kurzbeschreibung */'Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe.',
/* Lange Beschreibung *//*  */'Dies ist Eure erste Prüfung. Es wird eine leichte Aufgabe sein. Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe. Wir müssen ein Zeichen setzen, dass trotz unserer aktuellen Lage mit uns zu rechnen ist..',
/* EndText unwichtig */'Ich danke Euch. Wir werden sehen wie lange euer Ehrgeiz anhalten wird.',
/* Npc sagt zu SPieler */'Ihr habt die erste Prüfung gemeistert. Lasst uns die Nächste beginnen.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir 20 Abgeworfene Echsenhäute, 20 Gorillafangzähne,30 Seidenstoffe.',
/* Questziel erreicht anzeige text  Return to [param]*/'Kehrt zu Extator Magista zurück um Eure Belohnung zu erhalten.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  für Kill und Sammelquests */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
5128,2799,4306,0,0,0, /* Benötigte Items  */
20,20,30,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'','','','', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */



/*Zweite Pruefung*/

DELETE FROM `quest_template` where `id` = 800003;
DELETE FROM `creature_queststarter` WHERE `quest` = 800003;
DELETE FROM `creature_questender` WHERE `quest` = 800003;
DELETE FROM `gameobject_questender` WHERE `quest` = 800003;
DELETE FROM `gameobject_queststarter` WHERE `quest` = 800003;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800003');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800003');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800003');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800003');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
/* QuestTyp */1,
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
/* BelohungMenge */10,
/* BelohnungMenge2 */0,
/* MEnge3 */5,
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

/* 3te Prüfung */

DELETE FROM `quest_template` where `id` = 800004;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800001','800004');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800004');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800001','800004');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800004');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800004,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
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
/* Vorangehende Quest */800003,
/* Nächste QUest */800005,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800005,
/* XP */250,
/* Gold  */100000,
/*  Gold auf Maxlevel */100000,
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
/*  Belohnungitem1*/43102,
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
/* Titel  */'Die dritte Pruefung',
/* Kurzbeschreibung */'Bringt mir 10 boreanische Leder und 10 Wollverbände um mich zu unterstuetzen.',
/* Lange Beschreibung *//*  */'Mein Volk muss leiden, bringt mir daher die benoetigten Materialien, damit ich diese zu meinem Volk bringen kann.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt mir 10 boreanische Leder und 10 Wollverbände um mich zu unterstuetzen.',
/* Questziel erreicht anzeige text  Return to [param]*/'Kehrt zurück um Eure Belohnung abzuholen.',
0,0,0,0, /* RequiredNPC oR Gameobejt 1-4  */
0,0,0,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
33568,3530,0,0,0,0, /* Benötigte Items  */
10,10,0,0,0,0, /* Anzahl der Items   */
0, /*  Unknown */
'dsads','0asdasd','dasdasd','sadasd', /*  Objektiv Text 1-4 */
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
/*  `DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,
`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`EmoteOnIncomplete`,`EmoteOnComplete`,`OfferRewardEmote1`,
`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,
`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`VerifiedBuild` */

/* Die Aufnahme */

DELETE FROM `quest_template` where `id` = 800005;
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES ('800004','800005');
REPLACE INTO `creature_queststarter` (`id`,`quest`) VALUES ('800001','800005');
REPLACE INTO `gameobject_questender` (`id`,`quest`) VALUES ('800004','800005');

REPLACE INTO `gameobject_queststarter` (`id`,`quest`) VALUES ('800001','800005');



REPLACE INTO `quest_template` (`ID`,`Method`,`QuestLevel`,`MinLevel`,`MaxLevel`,`QuestSortID`,`QuestType`,`SuggestedGroupNum`,`LimitTime`,`RequiredClasses`,`RequiredRaces`,`RequiredSkillId`,`RequiredSkillPoints`,`RequiredFactionId1`,`RequiredFactionId2`,`RequiredFactionValue1`,`RequiredFactionValue2`,`RequiredMinRepFaction`,`RequiredMaxRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepValue`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestIdChain`,`RewardXPId`,`RewardOrRequiredMoney`,`RewardMoneyMaxLevel`,`RewardSpell`,`RewardSpellCast`,`RewardHonor`,`RewardHonorMultiplier`,`RewardMailTemplateId`,`RewardMailDelay`,`SourceItemId`,`SourceItemCount`,`SourceSpellId`,`Flags`,`SpecialFlags`,`RewardTitle`,`RequiredPlayerKills`,`RewardTalents`,`RewardArenaPoints`,`RewardItem1`,`RewardItem2`,`RewardItem3`,`RewardItem4`,`RewardAmount1`,`RewardAmount2`,`RewardAmount3`,`RewardAmount4`,`RewardChoiceItemID1`,`RewardChoiceItemID2`,`RewardChoiceItemID3`,`RewardChoiceItemID4`,`RewardChoiceItemID5`,`RewardChoiceItemID6`,
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
(/* ID  */800005,
/* Methode */2,
/* Questlevel */80,
/* MinLevel` */80,
/* MaxLevel */80,
/* QuestArt */-1,
/* QuestTyp */1,
/* Spieleranzahl? */1,
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
/* Vorangehende Quest */800004,
/* Nächste QUest */800006,
/* Welche Quests konkurrien miteinander`?  */0,
/*  Nachfolgequestkette*/800006,
/* XP */250,
/* Gold  */5000000,
/*  Gold auf Maxlevel */5000000,
/*  Nicht ändern*/0,
/* Nicht ändern */0,
/* Ehrebelohnung */0,
/* Ehrenmultiplier */0,
/* Rewward MailTemplate */0,
/* Reward Mail Delay */0,
/* Items die bei Annahme vergeben werden */44680,
/* Anzahl der vergebenden Items */1,
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
/* Belohnngauswahlitem1 */19364,
/*  Auswahlitem2*/19363,
/* Item3 */19360,
/* Item4 */19356,
/* Item5 */0,
/* Item6  */0,
/*  Menge von 1*/1,
/*  */1,
/*  */1,
/*  */1,
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
/* Titel  */'Die Aufnahme',
/* Kurzbeschreibung */'Bringt die Schriftensammlung zu Destro Mowning. Toetet zusaetzlich Geißelfuerst Tyrannus, Den Verschlinger der Seelen sowie Sartharion.',
/* Lange Beschreibung *//*  */'Bringt die Schriftensammlung zu Destro Mowning. Ihr findet Ihn an der Küste von Westfall. Aus seiner Sicht gesehen schaut er auf ein Schriffswrack. Meist hört er im Wind die Schreie von Murlockreaturen. Zusaetzlich muesst ihr Geißelfuerst Tyrannus, Den Verschlinger der Seelen sowie Sartharion toeten.',
/* EndText unwichtig */'',
/* Npc sagt zu SPieler */'Ich danke Euch.',
/* Requestitem TExt, du brauchst noch Items trext */'Bringt die Schriftensammlung zu Destro Mowning.',
/* Questziel erreicht anzeige text  Return to [param]*/'Destro Mowning ist erfreut Euch zu sehen. Toetet zusaetzlich Geißelfuerst Tyrannus, Den Verschlinger der Seelen sowie Sartharion.',
36502,28860,36658,0, /* RequiredNPC oR Gameobejt 1-4  */
1,1,1,0, /* Anzahl  */
0,0,0,0,/* item ID that is needed indirectly by the quest. For example, the quests asks for item X but the only way to get item X is by activating item Y; however, item Y is also a quest item. Therefore you set item Y's ID in this field. This requirement will not appear in the quest text, it is just for the core to know when to drop a quest item that isn't in the RequiredItemId field but is still needed by the quest. */
0,0,0,0, /* Von dem drüber das amount  */
44680,0,0,0,0,0, /* Benötigte Items  */
1,0,0,0,0,0, /* Anzahl der Items   */
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