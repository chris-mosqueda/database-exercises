-- SELECT user, host FROM mysql.user;
-- SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS tables_lessons_db;

USE tables_lessons_db;

DROP TABLE IF EXISTS flights;

CREATE TABLE flights(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  destination CHAR(3) NOT NULL,
  departs_from CHAR(3) NOT NULL,
  price FLOAT DEFAULT 0.0,
  num_tickets_sold INT UNSIGNED NOT NULL,
  gate_no VARCHAR(255) NOT NULL,
  description TEXT,
  departs_at DATETIME NOT NULL,
  arrives_at DATETIME NOT NULL,
  PRIMARY KEY(id)
);

-- SHOW TABLES;
DESCRIBE flights;
--SHOW CREATE TABLE flights\G;