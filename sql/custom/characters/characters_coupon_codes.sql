CREATE TABLE IF NOT EXISTS `player_coupon_codes` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `code` VARCHAR(45) NOT NULL COMMENT '',
  `belohnung` INT NULL COMMENT '',
  `anzahl` INT NULL COMMENT '',
  `benutzt` INT NULL COMMENT '',
  `name` VARCHAR(45) NULL COMMENT '',
  `benutztbar` INT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '');


CREATE TABLE IF NOT EXISTS `player_coupon_codes_account` (
   `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NULL COMMENT '',
  `accid` INT NULL DEFAULT 0 COMMENT '',
  `code` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
