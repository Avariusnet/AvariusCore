DELETE from `locales_item` where `entry` = 34046;
INSERT INTO `locales_item` (`entry`, `name_loc3`) VALUES ('34046', 'Hand von Exitare');
UPDATE `locales_item` SET `description_loc3`='Die Hand ist immer noch blutueberstroemt!' WHERE `entry`='34046';

DELETE from `locales_item` where `entry` = 34047;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('34047', 'Beta Tester Belohnung', 'Hat die Betaphase der AvariusCore unterstuetzt!');

DELETE from `locales_item` where `entry` = 7147;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('7147', 'Wandervolkmarke', 'Im Besitz des Wandervolkes!');


DELETE from `locales_item` where `entry` = 33788;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('33788', 'Astrale Knochen', 'Tausche die Knochen gegen VIP Marken ein!');