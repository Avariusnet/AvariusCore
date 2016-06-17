DELETE FROM `creature_template` WHERE `entry` = 800093;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800093,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */31196,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Zuendende Kapsel',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
  /* spell1  */0,
  /*   */0,
  /*   */0,
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*  Spell8 */0, 
  /*  Petspelldataid */0, 
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'tolreosadd');
  

UPDATE `creature_template` SET `HealthModifier`='20', `ArmorModifier`='20', `DamageModifier`='40' WHERE `entry`='800093';DELETE FROM `creature_template` WHERE `entry` = 800094;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 

VALUES ( /*  ID */ 800094,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */9583,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Drachenbaby',
  /*  Subname */'',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  21,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1,
  /*  scale */0,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */3000,
  /* RangeAttackTime`  */5000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
  /* Restistance1  */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*   */300,
  /*  Resi 6*/300,
  /* spell1  */0,
  /*   */0,
  /*   */0,
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*  Spell8 */0, 
  /*  Petspelldataid */0, 
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'tyraniumadd');
  

UPDATE `creature_template` SET `HealthModifier`='20', `ArmorModifier`='20', `DamageModifier`='40' WHERE `entry`='800094';/* die ganz nette Anna, selbiger Loot wie bei Tolreos momentan*/

DELETE FROM `creature_loot_template` WHERE `Entry` = 800095;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47241, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47249, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47498, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47510, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47512, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47522, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47495, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47468, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800095, 47561, 0, 12.5, 0, 1, 2, 1, 1); 



REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800095,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */3597,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Anna',
  /*  Subname */'die teuflische',
  /*  Iconname */'Attack',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  /*faction*/21,
  /*  npcflag Was ist er Questgeber oder weiteres? */0,
  /*  Speedwalk */2,
 /*  speedrun */ 2.14286,
  /*  scale */1.5,
  /*  rank  Normal, Elite?*/3,
  /*  dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */7000,
  /* RangeAttackTime`  */2000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flag */0,
  /*  unit flags2  */0,
  /*  dynamicflag */2,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */7,
  /* type  */6,
  /* type flag  */ 4,
  /*  lootid */800095,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
  /* Restistance1  */100,
  /*   */100,
  /*   */100,
  /*   */100,
  /*   */100,
  /*  Resi 6*/100,
  /* spell1  */0, 
  /*   */0,
  /*   */0,
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*  Spell8 */0, 
  /*  Petspelldataid */0, 
 /*   VehicleId` */ 0, 
  /* mingold`  */5000000, 
  /* MaxGold  */10000000, 
  /*  AiName */'AggressorAI',		/* greift an, sobald in Aggro Range*/
  /*  Movement Type */1, 
  /*Inhabit Type   */1, 
  /*  Hoverheight */1, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */13613872, 
  /*  flags_extra` */262144, 
  /* Scriptname  */'anna');
  
UPDATE `creature_template` SET `HealthModifier` = 444, `ArmorModifier`=50, `DamageModifier`=123 WHERE `entry` = 800095;

/* Position für den Port wäre 
	
	pPlayer->TeleportTo(169, 3036.49, -3145.50, 92.87, 0.91);
*/

DELETE FROM `creature` WHERE `guid` = 800095;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800095','800095','169','1','1','29791','367','3077.28','-3097.19','99.93','3.98','14400','0','0','1000000','250000','0');

DELETE FROM `creature_equip_template` where `CreatureID` = 800095;
REPLACE INTO `creature_equip_template` (`CreatureID`, `id`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES ('800095', '1', '50731', '1859', '0');DELETE FROM `quest_template` WHERE  `id` = 800551;
DELETE FROM `quest_template_addon` WHERE `id` = 800551;
DELETE FROM `creature_questender` WHERE `id` = 800073 AND `quest` = 800551;
DELETE FROM `creature_queststarter` WHERE `id` = 800073   AND `quest` = 800551;


REPLACE INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(
/* Id  */ '800551', 
/* TYPE  */ '2',
/* LEVEL  */ '80',
/* MINLevel  */ '80',
/* QuestSortID`  */'-1',
/* QuestInfoID`  */ '0',
/* SuggestedGroupNum`  */ '0',
/* RequiredFactionId1`  */'0',
/* RequiredFactionId2`  */'0',
/* RequiredFactionValue1`  */'0',
/* RequiredFactionValue2` */ '0',
/* RewardNextQuest` */'0',
/* RewardXPDifficulty` */ '70', 
/* RewardMoney`  */'1000000', 
/* RewardBonusMoney` */'1000000',
/* RewardDisplaySpell`  */'0',
/* RewardSpell`  */'0',
/* RewardHonor` */ '0',
/* RewardKillHonor` */ '0',
/* Startitem */ '0',
/* Flags` */ '4096',
/* RequiredPlayerKills`  */'0',
/* RewardItem1` */ '700518',
/* RewardAmount1` */ '1',
/* RewardItem2`  */'0',
/* RewardAmount2`  */'0',
/* RewardItem3`   */'0',
/* RewardAmount3  */ '0',
/* RewardItem4`  */ '0',
/* RewardAmount4   */'0',
/* ItemDrop1`  */'0',
/* ItemDropQuantity1` */'0',
/* Itemdrop2  */'0',
/* Quantity2 */ '0',
/* ItemDrop3` */ '0',
/* Quantity3 */ '0',
/* ItemDrop4`  */ '0', 
/* Itemdropquantity4   */'0',
/* RewardChoiceItemID1  */'0',
/* RewardChoiceItemQuantity1 */ '0',
/* RewardChoiceItemID2`  */'0',
/* RewardChoiceItemQuantity2` */ '0',
/* RewardChoiceItemID3`  */ '0',
/* RewardChoiceItemQuantity3`   */'0',
/* RewardChoiceItemID4`  */'0',
/* RewardChoiceItemQuantity4` */ '0',
/* RewardChoiceItemID5`  */'0',
/* RewardChoiceItemQuantity5`  */ '0',
/* RewardChoiceItemID6  */		'0',
/* RewardChoiceItemQuantity6`   */'0',
/* POIContinent   */'0',
/* POIx   */'0',
/* POIy*/ '0',
/* POIPriority */ '0',
/* RewardTitle */ '0',
/* RewardTalents  */ '0',
/* RewardArenaPoints  */ '0',
/* RewardFactionID1*/'0',
/* RewardFactionValue1   */ '0',
/* RewardFactionOverride1  */ '0',
/* RewardFactionID2   */ '0',
/* RewardFactionValue2`   */'0',
/* RewardFactionOverride2  */ '0',
/* RewardFactionID3`   */'0',
/* RewardFactionValue3`  */ '0',
/* RewardFactionOverride3*/ '0',
/* RewardFactionID4`   */ '0',
/* RewardFactionValue4*/ '0',
/* RewardFactionOverride4 */ '0',
/* RewardFactionID5`   */'0',
/* RewardFactionValue5*/ '0',
/* RewardFactionOverride5  */ '0',
/* TimeAllowed  */ '0',
/* AllowableRaces  */ '1791',
/* LogTitle   */'Die Waffen der Unterstuetzer',
/* LogDescription  */ 'Bringt mir die Waffen und ihr erhaltet Abzeichen von Darkshadow.',
/* QuestDescription   */'Hallo $N, die Waffen sind mein Lebenselixier. Ich bin ein verruckter Sammler. ',
/* QuestCompletionLog  */ 'Es ist eure Sache was ihr tut.',
/* RequiredNpcOrGo1   */'0',
/* RequiredNpcOrGo2`  */ '0',
/* RequiredNpcOrGo3`   */'0',
/* RequiredNpcOrGo4`  */ '0',
/* RequiredNpcOrGoCount1  */ '0',
/* RequiredNpcOrGoCount2`  */ '0',
/* RequiredNpcOrGoCount3`  */ '0',
/* RequiredNpcOrGoCount4`   */'0',
/* RequiredItemId1  */ '700519',
/* RequiredItemId2`  */ '0',
/* RequiredItemId3` */ '0',
/* RequiredItemId4`   */'0',
/* RequiredItemId5`  */ '0',
/* RequiredItemId6`  */ '0',
/* RequiredItemCount1   */'0',
/* RequiredItemCount2`  */ '0',
/* RequiredItemCount3`  */ '0',
/* RequiredItemCount4`   */'0',
/* RequiredItemCount5`   */'0',
/* RequiredItemCount6` */ '0',
/* Unknown0   */'0',
/* ObjectiveText1   */'0',
/* ObjectiveText2`   */'0',
/* ObjectiveText3`   */'0',
/* ObjectiveText4`    */'0',
/*  VerifiedBuild  */ '0');


REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */800551,
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

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800073, 800551);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800073, 800551);