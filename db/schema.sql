DROP DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE Department  (
  id INT NOT NULL auto_increment,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE Role  (
  id INT NOT NULL auto_increment,
  title VARCHAR(30),
  salary DECIMAL(10,2) NULL,
  department_id INT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Employee  (
  id INT NOT NULL auto_increment,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
  PRIMARY KEY (id)
);

USE employee_trackerDB;

INSERT INTO Department (name)
VALUES ("Engineering"), ("HR"),("Sales");

INSERT INTO Role (title, salary, department_id)
VALUES ("test tile", 40000, 1);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Kelsey", "Smith", 1, 1);