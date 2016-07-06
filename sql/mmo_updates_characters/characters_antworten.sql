CREATE TABLE IF NOT EXISTS `antworten` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `frage` VARCHAR(250) NOT NULL COMMENT '',
  `antwort` VARCHAR(45) NOT NULL COMMENT '',
  `belohnung` INT NOT NULL COMMENT '',
  `anzahl` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

DELETE FROM `antworten` WHERE `id` BETWEEN 0 AND 1;
  
INSERT INTO `firstrealm_characters`.`antworten` (`id`, `frage`, `antwort`, `belohnung`, `anzahl`) 
VALUES 
('0', 'Testfrage0', 'Testantwort0', '38186', '2'),
('1', 'Testfrage1', 'Testantwort1', '38186', '2');