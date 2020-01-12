CREATE TABLE IF NOT EXISTS `gm_actions_coupon_details` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `player` VARCHAR(45) NULL COMMENT '',
  `guid` INT NULL COMMENT '',
  `itemid` INT NULL COMMENT '',
  `gutscheincode` VARCHAR(45) NULL COMMENT '',
  `anzahl` INT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '');