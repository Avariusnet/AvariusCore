CREATE TABLE IF NOT EXISTS `gm_actions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `characterID` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountID` INT NULL,
  `action_done` VARCHAR(250) NULL,
  `action_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`));
