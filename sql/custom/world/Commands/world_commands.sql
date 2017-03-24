

DELETE FROM command WHERE `name`='mall';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('mall', 195, 'Syntax: .mall Teleportiert dich in die Hauptstadt deine Fraktion und belebt dich dort wieder, wenn du tot bist (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');

DELETE FROM command WHERE `name`='dalaran';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('dalaran', 195, '');


DELETE FROM command WHERE `name`='quest';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('quest', 195, 'Syntax: .quest [QuestID] zeigt dir an ob du die entsprechende Quest schon abgeschloßen hast oder nicht.');


DELETE FROM command WHERE `name`='buffs';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('buffs', 195, 'Syntax: .buffs Bufft dich für 200G (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');   

DELETE FROM trinity_string WHERE entry = 12003;
INSERT INTO trinity_string (`entry`,`content_default`) VALUES (12003, 'Player wishes to not be disturbed and cannot receive whisper messages.');

DELETE FROM command WHERE `name`='fake';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('fake', 192, 'Syntax: .fake [account/player] [accountname/playername] [on/off]');

DELETE FROM command WHERE `name`='gamble';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('gamble', 195, 'Syntax: .gamble ANZAHL_KUPFER Glücksspiel - Ihr habt die Change Geld zu setzen und den doppelten Betrag zu gewinnen.Chance 1:1. Um z.B. 1G zu setzten gebt ihr .gamble 10000 ein');   
DELETE FROM command WHERE `name`='roulette';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('roulette', 195, 'Syntax: .roulette ANZAHL_KUPFER - Ihr habt die Change Geld zu setzen und den 36x Betrag zu gewinnen.Chance 36:1. Um z.B. 1G zu setzten gebt ihr .gamble 10000 ein');  

/*Custom feature, read syntax for explonation. */
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite debuff',194,'Syntax: .elite debuff - removes Resurrection Sickness and Deserter debuffs from owner');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite map', 195, 'Syntax: .elite map - reveals all maps to owner');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite bank', 195, 'Syntax: .elite bank - Show your bank inventory.');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite repair', 195, 'Syntax: .elite repair - repair all your items.');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite resettalents', 195, 'Syntax: .elite resettalents - reset talents to your character.');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite whispers', 194, 'Syntax: .elite whispers - Enable/disable accepting whispers by elite accounts from players.');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite taxi', 195, 'Syntax: .elite taxi - reveals all taxipaths to owner');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite home', 195, 'Syntax: .elite home - teleport owner to home(ignoring CD on Hearthstone)');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite capital', 195, 'Syntax: .elite capital - teleport owner to capital(Orgrimmar/Stormwind) depending on faction of player');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite status', 193, 'Syntax: .elite  status $account - Elite Status eines Accounts anzeigen');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite add', 193, 'Syntax: .elite add $account $days - Set or update a VIP account.');
REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite insel', 195, 'Syntax: .elite insel  Teleportiert dich zur "Insel".');

/*REPLACE INTO `command` (`name`,`permission`,`help`) VALUES ('elite', 195, 'Elite Status.');*/

REPLACE INTO `trinity_string` VALUES (11778, 'Du kannst keine VIP Kommandos ausfuehren waerend du tot/gestunnt oder in einer arena/bg bist oder du dich im Kampf befindest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?? ?? ?????? ???????????? ???????? ???????? ?? ?????/??, ? ???????/?????? ??? ?????? ???????.');
REPLACE INTO `trinity_string` VALUES (11779, 'Du kannst keine VIP Kommandos ausfuehren waerend du tot/gestunnt oder in einer arena/bg bist oder du dich im Kampf befindest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?? ?? ?????? ???????????? ???????? ???????? ?? ?????/??/??????????, ? ???????/?????? ??? ?????? ???????.');
REPLACE INTO `trinity_string` VALUES (11780, 'Du hast keinen Elite Account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?? ?? ?????? ???????????? ???????? ???????? ?? ?????/??/??????????, ? ???????/?????? ??? ?????? ???????.');
REPLACE INTO `trinity_string` VALUES (11781, 'Dir stehen folgende Kommandos zur Verfuegung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '?? ?? ?????? ???????????? ???????? ???????? ?? ?????/??/??????????, ? ???????/?????? ??? ?????? ???????.');

/*Not working need full rewrite AuctionHouse system :(*/
/* REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('elite auction', 1, 'Syntax: .elite auction - opens auctionhouse window to character.');*/

/*gm ingame command*/
UPDATE `command` SET `permission`='195' WHERE `name`='gm ingame';


/* ex-commands */
DELETE FROM command WHERE `name` = 'question';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('question', 195, '');

DELETE FROM command WHERE `name` = 'question set';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('question set', 193, 'Syntax: .question [Question] [Answer] [Itemid] [Quantity]');

DELETE FROM command WHERE `name` = 'question get';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('question get', 195, '');


/* ITEM CODE BEFEHL */
DELETE FROM command WHERE `name`='coupon';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('coupon', 193, '');  

DELETE FROM command WHERE `name`='coupon redeem';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('coupon redeem', 195, 'Syntax: .coupon reedem [Your RedeemCore].');   

DELETE FROM command WHERE `name`='coupon generate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('coupon generate', 194, 'Generate a new coupun. Syntax: .coupon generate [ITEMID] [ITEMQuantity] [How often should the Code be used]');   

/* Fremdwerbung */
DELETE FROM command WHERE `name`='werbung';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('werbung', 195, '');   

/* Report System*/
DELETE FROM command WHERE `name`='report';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('report', 195, '');  

DELETE FROM command WHERE `name`='report quest';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('report quest', 195, '');   

DELETE FROM command WHERE `name`='report deactivate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('report deactivate', 193, '');  

DELETE FROM command WHERE `name`='report activate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('report activate', 193, '');  


/* Gildenhaus */
DELETE FROM `trinity_string` WHERE `entry`='11500';
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (11500, 'Deine Gilde besitzt noch kein Gildenhaus.');
DELETE FROM `command` WHERE `name`='gh';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('gh', 195, 'Syntax: .gh Teleportiert dich zu eurem Gildenhaus (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');


/* Custom Xp Rate */
DELETE FROM command WHERE `name`='xprate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('xprate', 195, '');   


/* Firstcharacter */
DELETE FROM command WHERE `name`='firstcharacter';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('firstcharacter', 195, ''); 

DELETE FROM command WHERE `name`='firstcharacter get';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('firstcharacter get', 195, ''); 


/* Autobroadcast*/
DELETE FROM command WHERE `name`='autobroadcast';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('autobroadcast', 193, ''); 

DELETE FROM command WHERE `name`='autobroadcast set';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('autobroadcast set', 193, ''); 


/* Testsciprt */
DELETE FROM command WHERE `name`='testscript';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('testscript', 193, ''); 

DELETE FROM command WHERE `name`='testscript one';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('testscript one', 193, ''); 

/*Testcommands */
DELETE FROM command WHERE `name`='logic';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic', 193, ''); 

DELETE FROM command WHERE `name`='logic id';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic id', 193, ''); 

DELETE FROM command WHERE `name`='logic report';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic report', 193, ''); 

DELETE FROM command WHERE `name`='logic gmlog';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic gmlog', 193, ''); 

DELETE FROM command WHERE `name`='logic name';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic name', 193, ''); 

DELETE FROM command WHERE `name`='logic gildenid';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic gildenid', 193, ''); 

DELETE FROM command WHERE `name`='logic time';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic time', 193, ''); 

DELETE FROM command WHERE `name`='logic playerlog';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic playerlog', 193, ''); 

DELETE FROM command WHERE `name`='logic gmaddlog';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic gmaddlog', 193, ''); 

DELETE FROM command WHERE `name`='logic playtime';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic playtime', 193, ''); 

DELETE FROM command WHERE `name`='logic playinsert';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic playinsert', 193, ''); 

DELETE FROM command WHERE `name`='logic locale';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic locale', 193, ''); 

DELETE FROM command WHERE `name`='logic translate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('logic translate', 193, ''); 
