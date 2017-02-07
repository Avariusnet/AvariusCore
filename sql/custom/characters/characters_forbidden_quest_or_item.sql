CREATE TABLE IF NOT EXISTS `forbidden_quest_or_item` (
  `id` INT NOT NULL auto_increment,
  `questid` INT NULL,
  `itemid` INT NULL,
  PRIMARY KEY (`id`));
