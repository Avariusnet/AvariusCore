DELETE FROM `instance_template` WHERE `map` = 169; 
DELETE FROM `access_requirement` WHERE `mapId` = 169;
DELETE FROM `game_tele` WHERE `id` = 1601;

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES ('169', '0', '0', '0');

REPLACE INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item_level`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES ('169', '3', '80', '80', '0', '0', '0', '0', '0', '0', '0', 'Emerald Forest');

REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES ('1601', '-366.091', '3097.86', '92.317', '0.0487625', '169', 'EmeraldDream');