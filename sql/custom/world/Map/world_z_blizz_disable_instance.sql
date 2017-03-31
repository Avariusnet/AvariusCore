/* disable instances for blizz-release */

/*
## INSTANCES

619	Ahn'kahet: The Old Kingdom
601	Azjol-Nerub
600	Drak'Tharon Keep
604	Gundrak
602	Halls of Lightning
668	Halls of Reflection
599	Halls of Stone
658	Pit of Saron
595	The Culling of Stratholme
632	The Forge of Souls
576	The Nexus
578	The Oculus
608	The Violet Hold
650	Trial of the Champion
574	Utgarde Keep
575	Utgarde Pinnacle

## RAIDS

631	Icecrown Citadel
533	Naxxramas
249	Onyxia's Lair
616	The Eye of Eternity
615	The Obsidian Sanctum
724	The Ruby Sanctum
649	Trial of the Crusader
603	Ulduar
624	Vault of Archavon

## ARENA

562	Blade's Edge Arena
617	Dalaran Arena
559	Nagrand Arena
572	Ruins of Lordaeron
618	The Ring of Valor

## BATTLEGROUNDS

30	Alterac Valley
529	Arathi Basin
566	Eye of the Storm
628	Isle of Conquest
607	Strand of the Ancients
489	Warsong Gulch

maps = 2, mmaps = 7 */

DELETE FROM `disables` WHERE `entry` IN('632','658','668','631','724','624','249','618','607');

INSERT INTO `disables` (`SourceType`,`entry`,`flags`,`comment`) VALUES
/* Instances and Raids */
('2', '632', '3', 'Instance Disabled'),	
('7', '632', '0', 'Instance Disabled'),	
('2', '658', '3', 'Instance Disabled'),	
('7', '658', '0', 'Instance Disabled'),
('2', '668', '3', 'Instance Disabled'),
('7', '668', '0', 'Instance Disabled'),
('2', '631', '3', 'Instance Disabled'),
('7', '631', '0', 'Instance Disabled'),
('2', '724', '3', 'Instance Disabled'),
('7', '724', '0', 'Instance Disabled'),
('2', '624', '3', 'Instance Disabled'),
('7', '624', '0', 'Instance Disabled'),
('2', '249', '3', 'Instance Disabled'),
('7', '249', '0', 'Instance Disabled'),
/* Arena */
('2', '618', '3', 'Instance Disabled'),
('7', '618', '0', 'Instance Disabled'),
/* Battleground */
('2', '607', '3', 'Instance Disabled'),
('7', '607', '0', 'Instance Disabled');




	








