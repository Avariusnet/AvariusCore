DELETE FROM `gameobject_template` where `entry` = 500115;
DELETE FROM `gameobject_loot_template` where `entry` = 500115;

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES ('500115', '10', '8275', 'Gravel', '0.6', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartGameObjectAI', '0', '1');
UPDATE `gameobject_template` SET `type`='3', `displayId`='49', `size`='2', `Data0`='43', `Data1`='10039', `Data3`='1', `AIName`='', `VerifiedBuild`='10039' WHERE `entry`='500115';
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES ('500115', '700521', '0', '100', '0', '1', '0', '1', '30');

INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES ('500115', '200000', '0', '0.1', '0', '1', '0', '1', '1');

INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES ('500115', '700526', '0', '10', '0', '1', '0', '1', '5');

UPDATE `gameobject_template` SET `Data0`='1785', `Data1`='500115', `Data4`='1', `Data5`='1', `VerifiedBuild`='0' WHERE `entry`='500115';
UPDATE `gameobject_template` SET `Data0`='1785', `Data1`='500115', `Data4`='1', `Data5`='1', `VerifiedBuild`='12340' WHERE `entry`='500115';
UPDATE `gameobject_template` SET `Data4`='0', `Data5`='0' WHERE `entry`='500115';
UPDATE `gameobject_template` SET `name`='Erdhaufen', `Data0`='43', `Data4`='1', `Data5`='1' WHERE `entry`='500115';

