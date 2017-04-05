CREATE TABLE IF NOT EXISTS `player_log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `guid` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountid` INT NULL,
  `action_done` VARCHAR(90) NULL,
  `actiondate` timestamp NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`id`));
