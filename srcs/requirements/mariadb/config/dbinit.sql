CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wp'@'%';
UPDATE mysql.user SET Password=PASSWORD('dbpass') WHERE User='wp';
GRANT ALL ON wordpress.* TO 'wp'@'%';
FLUSH PRIVILEGES;