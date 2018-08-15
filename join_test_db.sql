CREATE DATABASE IF NOT EXISTS join_test_db;

SHOW DATABASES;

USE join_test_db;

CREATE TABLE IF NOT EXISTS roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');
-- INSERT INTO users (name, email, role_id) VALUES
-- ('bob', 'bob@example.com', 1),
-- ('joe', 'joe@example.com', 2),
-- ('sally', 'sally@example.com', 3),
-- ('adam', 'adam@example.com', 3),
-- ('jane', 'jane@example.com', null),
-- ('mike', 'mike@example.com', null),
-- ('user1', 'u1e@example.com', null),
-- ('user2', 'u2@example.com', 2),
-- ('user3', 'u3@example.com', 2),
-- ('user4', 'u4@example.com', 2);

SHOW TABLES;

SELECT COUNT(roles.name),roles.name
FROM users
JOIN roles
ON roles.id = users.role_id
GROUP BY roles.name;

SELECT * FROM users;

