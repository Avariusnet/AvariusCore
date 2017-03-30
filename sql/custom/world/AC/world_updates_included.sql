DELETE FROM updates_include where path = '$/sql/progress' and state = 'RELEASED';
INSERT INTO `updates_include` (`path`, `state`) VALUES ('$/sql/progress', 'RELEASED');
