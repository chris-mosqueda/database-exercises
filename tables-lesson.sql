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

-- list of employees hired on 1987-02-23

show tables;

describe employees;

--what do I want to see
--select first_name, last_name
-- from where do I get the info
--from employees
-- conditions
--where hire_date = '1987-02-23';

--select * from employees
--where first_name like 'fer%';

--select * from employees
--where first_name in ('ELvis', 'Magy', 'Brendon');

--select emp_no, first_name, last_name from employees
--where emp_no < 20000 AND
  --    (last_name IN ('Herber', 'Baek') OR first_name = 'Shridhar');