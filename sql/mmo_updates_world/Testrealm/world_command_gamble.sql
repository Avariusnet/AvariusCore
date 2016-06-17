DELETE FROM command WHERE `name`='gamble';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('gamble', 195, 'Syntax: .gamble ANZAHL_KUPFER Glücksspiel - Ihr habt die Change Geld zu setzen und den doppelten Betrag zu gewinnen.Chance 1:1. Um z.B. 1G zu setzten gebt ihr .gamble 10000 ein');   
DELETE FROM command WHERE `name`='roulette';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('roulette', 195, 'Syntax: .roulette ANZAHL_KUPFER - Ihr habt die Change Geld zu setzen und den 36x Betrag zu gewinnen.Chance 36:1. Um z.B. 1G zu setzten gebt ihr .gamble 10000 ein');  