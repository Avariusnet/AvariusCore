DELETE FROM trinity_string WHERE entry = 12003;
INSERT INTO trinity_string (`entry`,`content_default`) VALUES (12003, 'Player wishes to not be disturbed and cannot receive whisper messages.');

DELETE FROM command WHERE `name`='fake';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('fake', 192, 'Syntax: .fake [account/player] [accountname/playername] [on/off]');
