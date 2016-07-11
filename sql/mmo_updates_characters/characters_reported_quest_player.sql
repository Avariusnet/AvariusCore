CREATE TABLE IF NOT EXISTS `reported_quest_player` (
  `id` INT NOT NULL COMMENT '',
  `playername` VARCHAR(45) NULL COMMENT '',
  `guid` INT NULL COMMENT '',
  `reported_quest_id` INT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
