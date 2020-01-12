CREATE TABLE IF NOT EXISTS `player_already_answered_questions` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `accountid` INT NOT NULL COMMENT '',
  `accountname` VARCHAR(45) NOT NULL COMMENT '',
  `questionnr` INT NOT NULL COMMENT '',
  `actiontime` timestamp NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`id`)  COMMENT '');

  
