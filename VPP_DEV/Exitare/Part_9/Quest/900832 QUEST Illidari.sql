DELETE FROM `quest_template` WHERE  `id` = 900832;
DELETE FROM `quest_template_addon` WHERE `id` = 900832;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900832;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900832;

Insert into `quest_template` VALUES (900832,2,80,80,-1,62,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachfeldzug spitzt sich zu.','Toetet Hochnethermant Zerevor.','Hallo $N, der Hochnethermant ist eine fuehrende Person der Marionetten in diesem Spiel aber nicht die wahre Bedrohung. Dennoch muss er ausgeschaltet werden. Geht also hin und besiegt den Rat der Illidari im Schwarzen Tempel im Schattenmondtal. Bringt mir dazu noch 30 Male der Illidari.','','Es ist Eure Sache was ihr tut.',22950,0,0,0,1,0,0,0,32897,0,0,0,0,0,30,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900832,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900831,
  /*  NextQuestID  */900833,
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
(800087, 900832);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900832);