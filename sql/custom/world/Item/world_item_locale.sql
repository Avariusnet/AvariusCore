DELETE from `locales_item` where `entry` = 34046;
INSERT INTO `locales_item` (`entry`, `name_loc3`) VALUES ('34046', 'Hand von Exitare');
UPDATE `locales_item` SET `description_loc3`='Die Hand ist immer noch blutueberstroemt!' WHERE `entry`='34046';

DELETE from `locales_item` where `entry` = 34047;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('34047', 'Beta Tester Belohnung', 'Hat die Betaphase der AvariusCore unterstuetzt!');

DELETE from `locales_item` where `entry` = 7147;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('7147', 'Wandervolkmarke', 'Im Besitz des Wandervolkes!');


DELETE from `locales_item` where `entry` = 33788;
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES ('33788', 'Astrale Knochen', 'Tausche die Knochen gegen Astrale Kredite ein!');


Delete from `locales_item` where `entry` in  (34071,38685,44832,48416,33570,33572);
INSERT INTO `locales_item` (`entry`, `name_loc3`, `description_loc3`) VALUES 
('34071', 'Beutel der Reichen', 'Was mag sich darin befinden?'),
('38685', 'Beutel der Reichen', 'Was mag sich darin befinden?'),
('44832', 'Beutel der Reichen', 'Was mag sich darin befinden?'),
('48416', 'Beutel der Reichen', 'Was mag sich darin befinden?'),
('33570', 'Beutel der Reichen', 'Was mag sich darin befinden?'),
('33572', 'Beutel der Reichen', 'Was mag sich darin befinden?');
