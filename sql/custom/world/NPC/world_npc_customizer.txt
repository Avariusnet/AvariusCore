-- Customize Service
SET
@Entry = 190010,
@Name = "MMOwning Customizer";

REPLACE INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 19646, 0, @Name, "Customize Service", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, 'Creature_Transmogrify');

SET @TEXT_ID := 50000;
REPLACE INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrifikation erlaubt euch das Aussehen eurer Items zu ändern aber die Stats zu behalten.\r\nTransmogrifizierte Items werden seelengebunden und können nicht mehr verkauft oder zurückgegeben werden.\r\nEin Menüupdate updatet die Ansicht und die Preise.\r\n\r\nNicht jedes Item kann in jedes andere Item transmogrifiziert werden.\r\nRestriktionen inkludieren, sind aber nicht limitiert auf:\r\nNur Rüstung und Waffen können transmogrifiziert werden\r\nGewehre, Bögen und Armbrüste können nicht transmogrifiziert werden\r\nAngelruten können nicht transmogrifiziert werden\r\nEs muss möglich sein beide Items zu anzulegen.\r\n\r\Transmogrifikationen bleiben so lange bestehen, wie ihr beide Items besitzt.\r\nWenn ihr ein Item in die Gildenbank legt oder es an andere verschickt wird die Transmogrifikation entfernt.\r\n\r\nIhr könnt die Transmogrifikation jederzeit kostenlos entfernen lassen.'),
(@TEXT_ID+1, 'Ihr könnt eure eigenen Transmogrifikations Sets speichern.\r\n\r\nUm zu speichern müsst ihr zuerst eure angelegten Items transmogrifizieren..\r\nDanach könnt ihr im Set Menü diese Kombination speichern,\r\nalle Items die transmogrifiziert sind werden angezeigt und ihr könnt sehen was gespeichert wird.\r\nWenn euch das Set gefällt, klickt auf speichern und benennt es wie ihr möchtet.\r\n\r\nUm ein gespeichertes Set zu nutzen klickt auf das gespeicherte Set im Set Menü und wählt das gewünschte aus.\r\nWenn das Set ein Item inkludiert welches bereits transmogrifiziert ist geht die alte Transmogrifikation verloren.\r\nEs gelten die gleichen Restriktionen die auch beim transmogrifizieren einzelner Items gelten.\r\n\r\nUm ein Set zu löschen könnt ihr im Set Menü auf löschen klicken.');

SET @STRING_ENTRY := 11100;
REPLACE INTO `trinity_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, 'Item transmogrifiziert'),
(@STRING_ENTRY+1, 'Der Equipment Slot ist leer'),
(@STRING_ENTRY+2, 'Ungültiges Quellitem gewählt'),
(@STRING_ENTRY+3, 'Quellitem existiert nicht'),
(@STRING_ENTRY+4, 'Zielitem existiert nicht'),
(@STRING_ENTRY+5, 'Die ausgewählten Items sind ungültig'),
(@STRING_ENTRY+6, 'Nicht genügend Gold'),
(@STRING_ENTRY+7, 'Du hast nicht genügend tokens'),
(@STRING_ENTRY+8, 'Transmogrifikation entfernt'),
(@STRING_ENTRY+9, 'Keine Transmogrifikationen gefunden'),
(@STRING_ENTRY+10, 'Ungültiger Itemname');
