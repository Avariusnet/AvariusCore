DELETE FROM `quest_template` WHERE  `id` = 900830;
DELETE FROM `quest_template_addon` WHERE `id` = 900830;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900830;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900830;

Insert into `quest_template` VALUES (900830,2,80,80,-1,0,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Der Rachefeldzug beginnt.','Toetet den Geisselfuerst Tyrannus.','Hallo $N, Ich finde keine Worte. Fuehrt den Auftrag aus und kommt zurueck wenn ihr fertig seid!','','Es ist Eure Sache was ihr tut.',36658,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900830,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 900829,
  /*  NextQuestID  */900831,
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
(800087, 900830);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900830);