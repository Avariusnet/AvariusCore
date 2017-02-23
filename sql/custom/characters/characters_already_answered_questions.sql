CREATE TABLE IF NOT EXISTS `player_already_answered_questions` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `accountid` INT NOT NULL COMMENT '',
  `accountname` VARCHAR(45) NOT NULL COMMENT '',
  `questionnr` INT NOT NULL COMMENT '',
  `actiontime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)  COMMENT '');

  
