CREATE TABLE IF NOT EXISTS `forbidden_quest_or_item` (
  `id` INT NOT NULL auto_increment,
  `questid` INT NULL,
  `itemid` INT NULL,
  PRIMARY KEY (`id`));

 /*Items*/
DELETE FROM `forbidden_quest_or_item` WHERE ID BETWEEN 1 AND 100;
INSERT INTO `forbidden_quest_or_item` (`questid`, `itemid`) VALUES ('0', '38186'); --Astraler Kredit
INSERT INTO `forbidden_quest_or_item` (`questid`, `itemid`) VALUES ('0', '49426'); --Frostmarke
INSERT INTO `forbidden_quest_or_item` (`questid`, `itemid`) VALUES ('0', '49623'); --
