REVOKE ALL PRIVILEGES ON * . * FROM 'avarius'@'localhost';

REVOKE ALL PRIVILEGES ON `world` . * FROM 'avarius'@'localhost';

REVOKE GRANT OPTION ON `world` . * FROM 'avarius'@'localhost';

REVOKE ALL PRIVILEGES ON `characters` . * FROM 'avarius'@'localhost';

REVOKE GRANT OPTION ON `characters` . * FROM 'avarius'@'localhost';

REVOKE ALL PRIVILEGES ON `auth` . * FROM 'avarius'@'localhost';

REVOKE GRANT OPTION ON `auth` . * FROM 'avarius'@'localhost';

DROP USER 'avarius'@'localhost';

DROP DATABASE IF EXISTS `world`;

DROP DATABASE IF EXISTS `characters`;

DROP DATABASE IF EXISTS `auth`;
