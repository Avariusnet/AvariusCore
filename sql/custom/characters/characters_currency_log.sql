CREATE TABLE IF NOT EXISTS `player_vip_currencylog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NULL,
  `characterguid` INT NULL,
  `accountname` VARCHAR(45) NULL,
  `accountid` INT NULL,
  `currencyitemid` INT NULL,
  `amount` INT NULL,
  `amountcost` INT NULL,
  `buydate` timestamp NOT NULL DEFAULT '1970-01-01 01:01:01',
  `buy_action` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
