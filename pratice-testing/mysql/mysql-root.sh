#! /usr/bin/bash

mysql -u root
FLUSH PRIVILEGES;
CREATE USER 'anoop'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'anoop'@'localhost' WITH GRANT OPTION;
 