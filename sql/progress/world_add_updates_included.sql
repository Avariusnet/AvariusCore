DELETE FROM updates_include where path = '$/sql/progress/world' and state = 'RELEASED';
INSERT INTO `updates_include` (`path`, `state`) VALUES ('$/sql/progress/world', 'RELEASED');
