CREATE TABLE IF NOT EXISTS `player_playtime_rewards` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `playtime` INT(45) NULL COMMENT '',
  `charactername` VARCHAR(45) NULL COMMENT '',
  `guid` INT(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
