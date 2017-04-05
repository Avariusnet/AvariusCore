CREATE TABLE IF NOT EXISTS `player_questions_and_answers` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `frage` VARCHAR(250) NOT NULL COMMENT '',
  `antwort` VARCHAR(45) NOT NULL COMMENT '',
  `belohnung` INT NOT NULL COMMENT '',
  `anzahl` INT NOT NULL COMMENT '',
  `insertdate` timestamp NOT NULL DEFAULT '1970-01-01 01:01:01',
  `creatorname` VARCHAR(45) NOT NULL COMMENT '',
  `creatorid` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');


DELETE FROM `player_questions_and_answers` WHERE `id` BETWEEN 0 AND 10;
  
INSERT INTO `player_questions_and_answers` (`id`, `frage`, `antwort`, `belohnung`, `anzahl`, `insertdate`, `creatorname`,`creatorid`) 
VALUES 
('1', 'Was ist Todesschwinge?', 'Drache', '38186', '2' , '1970-01-01 01:01:01', 'AvariusCore', '0'),
('2', 'Wer ist der Gruender des Wandervolkes?', 'Exitare', '38186', '2', '1970-01-01 01:01:01' , 'AvariusCore', '0'),
('3', 'Welchen ehemaligen Nachtelf schlug Arthas auf Nordend?', 'Illidan', '38186', '2', '1970-01-01 01:01:01', 'AvariusCore', '0');