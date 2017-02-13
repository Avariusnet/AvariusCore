CREATE TABLE IF NOT EXISTS `characters_currencylog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `characterguid` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountid` INT NULL,
  `currencyitemid` INT NULL,
  `amount` INT NULL,
  `buydate` INT NULL,
  `buy_action` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
