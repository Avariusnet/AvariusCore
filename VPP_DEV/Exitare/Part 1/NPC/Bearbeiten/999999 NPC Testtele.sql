/*
 *
 * By mthsena
 *
 */

-- Creature_template table
SET @CREATURE_TEMPLATE_ID := '999999'; -- Type a ID for your NPC -- #Default: 95000
SET @CREATURE_TEMPLATE_NAME := 'Custom Teleporter'; -- Type a name for your NPC -- #Default: Custom Teleporter
--
-- Gossip_menu_option table
SET @GOSSIP_MENU_ID := '999999'; -- Type a ID for the Gossip Menu -- #Default: 60000
SET @GOSSIP_MENU_TEXT := '- Custom Location -'; -- Type a text for the Gossip Menu Text -- #Default: - Custom Location -
SET @GOSSIP_MENU_CONFIRMTEXT := 'Are you sure?'; -- Type a text for the Gossip Confirm Text -- #Default: Area you sure?
--
-- Smart_scripts table
SET @MAP_ID := ''; -- Type the Map ID of the teleport location
SET @COORD_X := ''; -- Type the coordinate X of the teleport location
SET @COORD_Y := ''; -- Type the coordinate Y of the teleport location
SET @COORD_Z := ''; -- Type the coordinate Z of the teleport location
SET @ORIENTATION := ''; -- Type the coordinate Orientation of the teleport location
--
-- Data
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES(@CREATURE_TEMPLATE_ID,'0','0','0','0','0','17295','0','0','0',@CREATURE_TEMPLATE_NAME,'- by mthsena -',NULL,@GOSSIP_MENU_ID,'80','80','0','35','35','3','1','1.14286','1.8','0','500','5000','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','','1');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES(@GOSSIP_MENU_ID,'0','2',@GOSSIP_MENU_TEXT,'1','1','0','0','0','0',@GOSSIP_MENU_CONFIRMTEXT);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES(@GOSSIP_MENU_ID,'1','4','Close Window.','1','1','0','0','0','0',NULL);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES(@CREATURE_TEMPLATE_ID,'0','0','0','62','0','100','0',@GOSSIP_MENU_ID,'0','0','0','62',@MAP_ID,'0','0','0','0','0','0','8','0','0',@COORD_X,@COORD_Y,@COORD_Z,@ORIENTATION,'Custom Teleporter - by mthsena -');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES(@CREATURE_TEMPLATE_ID,'0','1','0','62','0','100','0',@GOSSIP_MENU_ID,'1','0','0','72','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Custom Teleporter - by mthsena -');