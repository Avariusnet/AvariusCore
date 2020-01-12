CREATE TABLE IF NOT EXISTS `coupon_codes` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `code` VARCHAR(45) NOT NULL COMMENT '',
  `itemID` INT NULL COMMENT '',
  `amount` INT NULL COMMENT '',
  `usedCount` INT NULL COMMENT '',
  `usableCount` INT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '');


CREATE TABLE IF NOT EXISTS `coupon_codes_accounts` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `accountID` INT NULL DEFAULT 0 COMMENT '',
  `code` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '');


CREATE TABLE IF NOT EXISTS `coupon_rewards` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ItemID` INT NULL,
  PRIMARY KEY (`ID`));

  
DELETE FROM `coupon_rewards` where `ID` BETWEEN 0 AND 24;
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('38186');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('49426');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('47241');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('37663');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('36913');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('3577');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('3575');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('49908');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('34052');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('44128');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('2776');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('20559');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('20560');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('29024');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('42425');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('43589');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('47395');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('20558');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('700498');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('700507');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('700508');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('23445');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('11371');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('3575');
INSERT INTO `coupon_rewards` (`ItemID`) VALUES ('2840');
