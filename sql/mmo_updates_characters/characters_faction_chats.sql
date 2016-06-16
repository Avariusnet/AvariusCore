DELETE FROM `channels` WHERE `name` = "Allianz";
DELETE FROM `channels` WHERE `name` = "Horde";

INSERT INTO `channels` (`name`, `team`, `announce`, `ownership`) VALUES ('Allianz ', '469', '0', '0');
INSERT INTO `channels` (`name`, `team`, `announce`, `ownership`) VALUES ('Horde ', '67', '0', '0');
