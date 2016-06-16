DELETE FROM `trinity_string` WHERE `entry`='11500';
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (11500, 'Deine Gilde besitzt noch kein Gildenhaus.');
DELETE FROM `command` WHERE `name`='gh';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('gh', 195, 'Syntax: .gh Teleportiert dich zu eurem Gildenhaus (Kann nicht im Kampf, Flug oder auf einem Mount verwendet werden)');