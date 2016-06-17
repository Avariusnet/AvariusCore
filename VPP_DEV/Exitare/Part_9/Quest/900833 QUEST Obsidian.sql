DELETE FROM `quest_template` WHERE  `id` = 900833;
DELETE FROM `quest_template_addon` WHERE `id` = 900833;
DELETE FROM `creature_questender` WHERE `id` = 800087 AND `quest` = 900833;
DELETE FROM `creature_queststarter` WHERE `id` = 800087   AND `quest` = 900833;

Insert into `quest_template` VALUES (900833,2,80,80,-1,62,0,0,0,0,0,0,70,1000000,1000000,0,0,0,0,0,0,0,38186,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1791,'Einhalt muss geboten werden.','Toetet Satharion im Obsidiansanktum.','Hallo $N, Satharion ein maechtiger Drache muss getoetet werden. Durchforstet seinen Leichnam nach einem komischen Objekt und bringt es mir. Beeilt Euch!','','Es ist Eure Sache was ihr tut.',28860,0,0,0,1,0,0,0,33470,700525,0,0,0,0,100,1,0,0,0,0,0,'','','','',1);


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */900833,
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
(800087, 900833);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800087, 900833);