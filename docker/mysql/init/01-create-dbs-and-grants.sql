CREATE DATABASE IF NOT EXISTS minitech_development;
CREATE DATABASE IF NOT EXISTS minitech_test;
CREATE USER IF NOT EXISTS'minitech'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON minitech_development.* TO 'minitech'@'%';
GRANT ALL PRIVILEGES ON minitech_test.* TO 'minitech'@'%';
FLUSH PRIVILEGES;
