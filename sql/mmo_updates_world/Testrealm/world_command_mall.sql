DELETE FROM command WHERE `name`='mall';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('mall', 195, 'Syntax: .mall Teleportiert dich in die Hauptstadt deine Fraktion und belebt dich dort wieder, wenn du tot bist (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');

DELETE FROM command WHERE `name`='dala';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('dala', 195, 'Syntax: .dala Teleportiert dich nach Dalaran und belebt dich dort wieder, wenn du tot bist (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');


DELETE FROM command WHERE `name`='quest';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('quest', 195, 'Syntax: .quest [QuestID] zeigt dir an ob du die entsprechende Quest schon abgeschloßen hast oder nicht.');