CREATE TABLE IF NOT EXISTS `antworten` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `frage` VARCHAR(250) NOT NULL COMMENT '',
  `antwort` VARCHAR(45) NOT NULL COMMENT '',
  `belohnung` INT NOT NULL COMMENT '',
  `anzahl` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');


DELETE FROM `antworten` WHERE `id` BETWEEN 0 AND 10;
  
INSERT INTO `antworten` (`id`, `frage`, `antwort`, `belohnung`, `anzahl`) 
VALUES 
('1', 'Was ist Todesschwinge?', 'Drache', '38186', '2'),
('2', 'Wer ist der Gruender des Wandervolkes?', 'Exitare', '38186', '2'),
('3', 'Welchen ehemaligen Nachtelf schlug Arthas auf Nordend?', 'Illidan', '38186', '2');