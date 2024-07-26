#! /usr/bin/bash
sleep 10
mysql -e "CREATE USER anoop@localhost IDENTIFIED BY '12345';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'anoop'@'localhost' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"

mysql --password=12345 --user=anoop << EOF
create database apple;
use apple;
CREATE TABLE employee (PersonID int, FirstName varchar(255), LastName varchar(255), Address varchar(255), City varchar(255));
INSERT into employee VALUES (1,'Nisha','Maurya','Mumbai','Mumbai');
INSERT into employee VALUES (1,'Anoop','Maurya','Mumbai','Mumbai');
EOF