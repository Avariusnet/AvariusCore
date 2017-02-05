CREATE TABLE IF NOT EXISTS `custom_xp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `charactername` VARCHAR(45) NOT NULL,
  `characterguid` INT NOT NULL,
  `xp_value` INT NOT NULL,
  PRIMARY KEY (`id`));
