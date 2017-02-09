CREATE TABLE IF NOT EXISTS `couponrewards` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ItemID` INT NULL,
  PRIMARY KEY (`ID`));

DELETE FROM `couponrewards` where `ID` BETWEEN 0 AND 24;
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('0', '38186');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('1', '49426');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('2', '47241');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('3', '37663');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('4', '36913');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('5', '3577');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('6', '3575');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('7', '49908');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('8', '34052');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('9', '44128');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('10', '2776');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('11', '20559');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('12', '20560');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('13', '29024');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('14', '42425');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('15', '43589');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('16', '47395');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('17', '20558');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('18', '700498');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('19', '700507');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('20', '700508');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('21', '23445');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('22', '11371');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('23', '3575');
INSERT INTO `couponrewards` (`ID`, `ItemID`) VALUES ('24', '2840');
