DELETE FROM `quest_template` WHERE  `id` = 900831;
DELETE FROM `quest_template_addon` WHERE `id` = 900831;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900831;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900831;

Insert into `quest_template` VALUES (900831,2,80,80,-1,0,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachfeldzug geht weiter.','Toetet den Verschlinger der Seelen.','Hallo $N, nachdem nun der erste Intrigant gefallen ist, wollen wir uns den Naechsten vorknoepfen. Toetet den Verschlinger der Seelen.','','Es ist Eure Sache was ihr tut.',36502,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900831,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900830,
  /*  NextQuestID  */900832,
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
(800087, 900831);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900831);