CREATE TABLE IF NOT EXISTS `forbidden_quest_or_item` (
  `id` INT NOT NULL auto_increment,
  `questid` INT NULL,
  `itemid` INT NULL,
  PRIMARY KEY (`id`));

DELETE FROM `forbidden_quest_or_item` WHERE ID BETWEEN 1 AND 100;
INSERT INTO `forbidden_quest_or_item` (`id`, `questid`, `itemid`) VALUES ('2', '0', '100');
