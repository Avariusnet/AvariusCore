CREATE TABLE IF NOT EXISTS `gm_actions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `characterID` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountID` INT NULL,
  `action_done` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
