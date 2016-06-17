DELETE FROM `quest_template` WHERE  `id` = 900824;
DELETE FROM `quest_template_addon` WHERE `id` = 900824;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900824;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900824;

Insert into `quest_template` VALUES (900824,2,80,80,-1,0,0,0,0,0,0,0,70,2000000,2000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Entledigen der Konkurrenz.','Wir muessen unsere Konkurrenz abschuettlen.','Hallo $N, unsere Konkurrenz holt auf. Diese Trolle, nun gut ich verkneife mir jedes Wort, schliesslich kaempfen wir ja gemeinsam gegen diese stinkenden Bestien. Aber unser Vorteil ist wichtiger. Toetet also Daakara! Jetzt sofort und fuer immer.','','Es ist Eure Sache was ihr tut.',23863,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900824,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900823,
  /*  NextQuestID  */900825,
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

  
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800055, 900824);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900824);