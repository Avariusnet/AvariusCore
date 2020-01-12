CREATE TABLE IF NOT EXISTS `reported_quest` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `questname` VARCHAR(45) NULL COMMENT '' ,
  `questid` INT NULL COMMENT '',
  `anzahl` INT NULL COMMENT '',
  `aktiv` INT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
