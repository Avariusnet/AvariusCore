DELETE FROM `quest_template` WHERE  `id` = 900827;
DELETE FROM `quest_template_addon` WHERE `id` = 900827;
DELETE FROM `creature_questender` WHERE `id` = 800055 AND `quest` = 900827;
DELETE FROM `creature_queststarter` WHERE `id` = 800055   AND `quest` = 900827;

Insert into `quest_template` VALUES (900827,2,80,80,-1,0,0,0,0,0,0,0,70,1500000,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Die Raren sind die Wichtigen.','Wer hat nicht gerne seltene Dinge?','Hallo $N, ein weiteres Mal habe ich seltene Dinge ausgemacht, die von grossem Wert sind. Bitte seid so gut und bringt sie mir. Ich entschuldige mich fuer die vorrangegangene Abzocke. Es wird nicht mehr passieren.','','Es ist Eure Sache was ihr tut.',448,520,32495,18733,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900827,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900826,
  /*  NextQuestID  */900828,
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
(800055, 900827);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800055, 900827);