-- Drop Item 47560 from Black Knight Loot
DELETE FROM reference_loot_template WHERE `reference_loot_template`.`entry` = 34170 AND `reference_loot_template`.`item` = 47560;
-- Add Item 47229 to Black Knight Loot
INSERT INTO reference_loot_template (`entry` ,`item` ,`ChanceOrQuestChance` ,`lootmode` ,`groupid` ,`mincountOrRef` ,`maxcount`) VALUES ('34170', '47229', '0', '1', '1', '1', '1');