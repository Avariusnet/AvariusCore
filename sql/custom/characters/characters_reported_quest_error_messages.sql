CREATE TABLE IF NOT EXISTS `reported_quest_error_messages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `guid` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountid` INT NULL,
  `questid` INT NULL,
  `error_message` VARCHAR(1200) NULL,
  PRIMARY KEY (`id`));
