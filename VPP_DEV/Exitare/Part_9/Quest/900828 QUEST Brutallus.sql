DELETE FROM `quest_template` WHERE  `id` = 900828;
DELETE FROM `quest_template_addon` WHERE `id` = 900828;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900828;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900828;

Insert into `quest_template` VALUES (900828,62,80,80,-1,0,0,0,0,0,0,0,70,3000000,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Brutaler als Brutallus?','Geht hin und bringt Brutallus zur Strecke.','Hallo $N, ich hoffe ihr seid mir nicht mehr abgeneigt und wohlgesonnener nach meinem Geschenk an euch. Toetet also Brutallus im Sonnenbrunnenplateau um mir zu beweisen das ihr treu zu mir steht.','','Es ist Eure Sache was ihr tut.',24882,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900828,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900827,
  /*  NextQuestID  */900829,
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
(800055, 900828);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900828);