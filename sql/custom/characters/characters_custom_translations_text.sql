CREATE TABLE IF NOT EXISTS `custom_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `translationid` int(11) DEFAULT NULL,
  `english` varchar(2000)  DEFAULT 'empty' ,
  `1` varchar(2000)  DEFAULT 'empty',
  `french` varchar(2000)  DEFAULT 'empty'  ,
  `german` varchar(2000) DEFAULT  'empty' ,
  `4` varchar(2000)  DEFAULT 'empty',
  `5` varchar(2000)  DEFAULT 'empty',
  `spanish1` varchar(2000) DEFAULT 'empty',
  `spanish2` varchar(2000) DEFAULT 'empty',
  `russian` varchar(2000) DEFAULT 'empty',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DELETE FROM `custom_translations` where groupid = 1;
DELETE FROM `custom_translations` where groupid = 2;
DELETE FROM `custom_translations` where groupid = 3;
DELETE FROM `custom_translations` where groupid = 4;

/* Exaltor */
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
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '23', 'New Commands', 'Neue Befehle');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '24', ' How to get a new First Character`?', 'Wie bekomme ich einen neuen Erst Charakter?');

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '1000', 'Your First Character is empty. Come to me and get it!', 'Dein Erstcharakter ist noch frei. Komm her und hol ihn dir jetzt!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '1001', 'Thanks for your Betatesting!', 'Danke fuer deine Unterstuetzung in der Betaphase!');

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '2000', 'The AvariusCore includes several new commands. .xprate , .report, .coupon redeem, .question get.', 'Die AvariusCore bietet einige neue Befehle. .xprate , .report, .coupon redeem, .question get.');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '2001', 'I am Exaltor. I know some special Features for you. But these feature must be activated , to be useful for you!', 'Ich bin Exaltor. Ich kenne verschiedene spezielle Features. Aber diese muessen aktiv sein, damit sie dir etwas nuetzen! ');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '2002', 'A First Character or Start Character is a Feature of AvariusCore. If you get an First Character you will get Level 80, 5k Gold , 4 Bags and a possibilty to buy your Equip!', 'Ein First Charakter oder auch Start Charakter ist ein Features der AvariusCore. Wenn du einen First Charakter bekommst, dann bekommst du Level80, 5K Gold,4 Taschen sowie die Moeglichkeit dir dein Equipment zu kaufen.');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('1', '2003', 'To get a new First Character, just type .firstcharacter get! Then click on our Support NPC and choose the correct Optíon!', 'Um einen neuen Erst Charakter zu bekommen, gib einfach .firstcharacter get ein. Dann klickst du auf den Support NPC und waehlst die korrekte Option!');

/* Race and Faction Change */
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '1', 'You have not enough Credits!', 'Du hast nicht genug Astrale Kredite!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '2', 'Please logout now!', 'Bitte logge dich aus um die Aenderungen vorzunehmen!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '3', 'Racechange', 'Rassenwechsel');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '4', 'Character Rename', 'Namenswechsel');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '5', 'Faction Change', 'Fraktionswechsel');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '6', 'Race and Faction Change', 'Rassen und Fraktionswechsel');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '7', 'How does this work?', 'Wie funktioniert das hier?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '8', 'Just click the Option you like to activate and logout!', 'Klicke die Option an die du aktivieren moechtest und logge dich aus!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '9', 'Actual Costs?', 'Aktuelle Kosten?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('2', '10', 'A Rename costs 1 ,Racechange costs 2, Factionchange costs 4, and Race and Factionchange costs 6 Coins!', 'Ein Rename kostet 1, Rassenwechsel 2, Fraktionswechsel 4 und Rassen und Fraktionswechsel 6 Marken!');


/* VIP Vendor */
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '1', 'Helpmenu!', 'Hilfemenu');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '2', 'Buy VIP Tokens!', 'Kaufe VIP Token!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '3', 'Bones Exchange!', 'Knochen tauschen!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '4', 'VIP Tokens? What is it?', 'Was sind VIP Tokens?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '5', 'Amount of Tokens you want to buy!', 'Wie viele Tokens willst du kaufen?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '6', 'Actual Token Cost', 'Aktueller Token Preis');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '7', 'VIP Tokens are the Currency for all our exclusive Features on the Server. It can be found all over the world or you can buy it here!', 'VIP Tokens sind die Waehrung fuer alle exclusiven Features hier. Man kann die Waehrung ueberall auf der Welt finden oder hier per Gold kaufen!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '8', 'Actual Token Cost is', 'Der aktuelle Preis ist bei');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('3', '9', 'Amount of Bones to change.', 'Anzahl der Knochen die du tauschen willst.');



/* SUPPORTNPC */ 
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '1', 'Does my Character exist?', 'Existiert mein Charakter noch?');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '2', 'Transfer my Character to another Account!', 'Transferiere meinen Charakter zu einem anderen Account!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '3', 'Give me new First Character!', 'Gib mir einen neuen Erst Charakter!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '4', 'Thx! Bring me back!', 'Danke! Bring mich zurueck!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '5', 'Helpmenu!', 'Hilfe!');

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '1000', 'No Character in DB!', 'Keinen Charakter gefunden!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '1001', 'No Account in DB!!', 'Keinen Account gefunden!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '1002', 'Not enough Coins!', 'Nicht genug Marken!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '1003', 'You have already 10 Characters on this Account!', 'Du hast schon 10 Charaktere auf diesem Account!!');

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '2000', 'Not enough Coins!', 'Nicht genug Marken!');

INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '3000', 'Enter the Charactername!', 'Gib den Charakternamen bitte ein!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '3001', 'Please enter the Destination Accounname!!', 'Bitte den Zielaccountnamen eingeben!');
INSERT INTO `custom_translations` (`groupid`, `translationid`, `english`, `german`) VALUES ('4', '3002', 'Are u sure? Please enter your Charaktername!', 'Bist du dir sicher? Gib deinen Charakternamen ein!');

