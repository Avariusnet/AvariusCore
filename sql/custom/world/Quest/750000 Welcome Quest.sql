DELETE FROM `quest_template` where id = 750000;
DELETE FROM `creature_questender` where id = 800044 AND quest = 750000;
DELETE FROM `quest_template_addon` WHERE id = 750000;

INSERT INTO quest_template (ID, QuestType, QuestLevel, MinLevel, QuestSortID, QuestInfoID, SuggestedGroupNum, RequiredFactionId1, RequiredFactionId2, RequiredFactionValue1, RequiredFactionValue2, RewardNextQuest, RewardXPDifficulty, RewardMoney, RewardBonusMoney, RewardDisplaySpell, RewardSpell, RewardHonor, RewardKillHonor, StartItem, Flags, RequiredPlayerKills, RewardItem1, RewardAmount1, RewardItem2, RewardAmount2, RewardItem3, RewardAmount3, RewardItem4, RewardAmount4, ItemDrop1, ItemDropQuantity1, ItemDrop2, ItemDropQuantity2, ItemDrop3, ItemDropQuantity3, ItemDrop4, ItemDropQuantity4, RewardChoiceItemID1, RewardChoiceItemQuantity1, RewardChoiceItemID2, RewardChoiceItemQuantity2, RewardChoiceItemID3, RewardChoiceItemQuantity3, RewardChoiceItemID4, RewardChoiceItemQuantity4, RewardChoiceItemID5, RewardChoiceItemQuantity5, RewardChoiceItemID6, RewardChoiceItemQuantity6, POIContinent, POIx, POIy, POIPriority, RewardTitle, RewardTalents, RewardArenaPoints, RewardFactionID1, RewardFactionValue1, RewardFactionOverride1, RewardFactionID2, RewardFactionValue2, RewardFactionOverride2, RewardFactionID3, RewardFactionValue3, RewardFactionOverride3, RewardFactionID4, RewardFactionValue4, RewardFactionOverride4, RewardFactionID5, RewardFactionValue5, RewardFactionOverride5, TimeAllowed, AllowableRaces, LogTitle, LogDescription, QuestDescription, AreaDescription, QuestCompletionLog, RequiredNpcOrGo1, RequiredNpcOrGo2, RequiredNpcOrGo3, RequiredNpcOrGo4, RequiredNpcOrGoCount1, RequiredNpcOrGoCount2, RequiredNpcOrGoCount3, RequiredNpcOrGoCount4, RequiredItemId1, RequiredItemId2, RequiredItemId3, RequiredItemId4, RequiredItemId5, RequiredItemId6, RequiredItemCount1, RequiredItemCount2, RequiredItemCount3, RequiredItemCount4, RequiredItemCount5, RequiredItemCount6, Unknown0, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, VerifiedBuild) VALUES (
'750000', '2', '1' /*QuestLevel*/, /*Min Level*/'1', /* QuestSORT ID*/  '-1', '0', '0', '0', '0', '0', '0', '0', '0', /* REWARD MONEY */'100000', '0', '0', '0', '0', '0', '0', /*QUEST FLAG */ '0',/* RequiredPlayerKills*/ '0',/* REWARD ITEM 1 */ '38186', /* COUNT 1 */'2', /* REWARD ITEM 2 */'0',/* COUNT 2 */ '0',/* REWARD ITEM 3 */ '0',/* COUNT 3 */ '0',/* REWARD ITEM 4 */ '0',/* COUNT 4 */ '0', '0', '0', '0', '0', '0', '0', '0', '0', /*REWARDCHOICE 1*/'0',  /*REWARDCOUNT 1*/'0',/*REWARDCHOICE 2*/ '0',  /*REWARDCOUNT 2*/'0',/*REWARDCHOICE 3*/ '0', /*REWARDCOUNT 3*/ '0',/*REWARDCHOICE 4*/ '0',  /*REWARDCOUNT 4*/'0',/*REWARDCHOICE 5*/ '0', /*REWARDCOUNT 5*/ '0', /*REWARDCHOICE 6*/'0',  /*REWARDCOUNT 6*/'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',/*AllowableRaces*/ '1791',/* Title*/  'Welcome on our Server!', /* Description */ 'Complete this Quest for your Reward',/* LANGE ERKLÄRUNG */ 'Welcome on our Server! For your best Support it is neccessary to tell you some special Features. Speak with Exaltor and then complete the Quest!', 'I hope you now know all you need!', /* ABSCHLIESENDES DING */'Do what you like to do.',/*RequiredNpcOrGo1*/ '0', /*RequiredNpcOrGo2*/'0',/*RequiredNpcOrGo3*/ '0',/*RequiredNpcOrGo4*/ '0', /*RequiredNpcOrGoCount1*/ '0', /*RequiredNpcOrGoCount2*/'0',/*RequiredNpcOrGoCount3*/ '0',/*RequiredNpcOrGoCount4*/ '0',/*RequiredItemId1*/ '0',/*RequiredItemId2*/ '0',/*RequiredItemId3*/ '0', /*RequiredItemId4*/ '0',/*RequiredItemId5*/ '0',/*RequiredItemId6*/ '0', /* RequiredItemCount1*/'0', /* RequiredItemCount2*/'0',/* RequiredItemCount3*/ '0', /* RequiredItemCount4*/'0',/* RequiredItemCount5*/ '0',/* RequiredItemCount6*/ '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */750000,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 0,
  /*  NextQuestID  */0,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);

DELETE FROM `creature_questender` where id = 800044 AND quest = 750000;
INSERT INTO creature_questender (id, quest) VALUES
('800044', '750000');