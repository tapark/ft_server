CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'tapark'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'tapark'@'localhost' identified by '1234' with grant option;
FLUSH PRIVILEGES;
