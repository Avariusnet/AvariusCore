CREATE TABLE IF NOT EXISTS `custom_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `translationid` int(11) DEFAULT NULL,
  `english` varchar(65)  DEFAULT 'empty' ,
  `1` varchar(35)  DEFAULT 'empty',
  `french` varchar(65)  DEFAULT 'empty'  ,
  `german` varchar(65) DEFAULT  'empty' ,
  `4` varchar(65)  DEFAULT 'empty',
  `5` varchar(65)  DEFAULT 'empty',
  `spanish1` varchar(65) DEFAULT 'empty',
  `spanish2` varchar(65) DEFAULT 'empty',
  `russian` varchar(65) DEFAULT 'empty',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DELETE FROM `custom_translations` where groupid = 1;

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '0', 'Information and Help', 'Informationen und Hilfe');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '1', 'Who are u?', 'Wer bist du?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '2', 'What is a First Character?', 'Was ist ein Erst Charakter?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '3', 'Get the First Character!', 'Gib mir den Erst Charakter!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '4', 'What are the Coupons?', 'Was sind diese Coupons?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '5', 'Generate Coupon!', 'Generiere Coupon!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '6', 'Generate Coupon for a Friend!', 'Generiere einen Freundschaftscoupon!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '7', 'Max your Proffesion!', 'Setze deine Berufe hoch!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '8', 'Mining', 'Bergbau');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '9', 'Tailoring', 'Schneiderei');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '10', 'Blacksmithing', 'Schmiedekunst');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '11', 'Herbalism', 'Kreatuerkunde');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '12', 'Skinning', 'Kuerschner');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '13', 'Leatherworking', 'Lederer');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '14', 'Jewelcrafting', 'Juwelierskunst');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '15', 'Alchemy', 'Alchemie');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '16', 'Enchanting', 'Verzauberkunst');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '17', 'Inscription', 'Inschriftenkunde');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '18', 'Engineering', 'Ingenieurskunst');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '19', 'Back to Features', 'Zu den Features');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '20', 'Buy Level', 'Level kaufen');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '21', 'Buy Level 80 Equipment!', 'Level 80 Equipment kaufen!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '22', 'Level up to 80!', 'Auf 80 setzen!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '1000', 'Your First Character is empty. Come to me and get it!', 'Dein Erstcharakter ist noch frei. Komm her und hol ihn dir jetzt!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '1001', 'Thanks for your Betatesting!', 'Danke fuer deine Unterstuetzung in der Betaphase!');
