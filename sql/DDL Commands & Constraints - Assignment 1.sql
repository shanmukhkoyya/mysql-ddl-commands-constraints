-- WARNING: This is a destructive learning exercise.
-- It uses TRUNCATE, DROP TABLE, and DROP DATABASE, and recreates the employee database.
-- Run only in a disposable local MySQL environment. Never run on production data.

CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);
SHOW TABLES;

CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
SHOW TABLES;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

show tables;

TRUNCATE TABLE employees;

show tables;

DROP TABLE employees;

show tables;

DROP DATABASE employee;

CREATE DATABASE employee;

use employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

DESC Employees;

INSERT INTO Departments (department_id, department_name)
VALUES (1, 'IT');

INSERT INTO Location (location)
VALUES ('Visakhapatnam');

INSERT INTO Employees (
    employee_id,
    employee_name,
    gender,
    age,
    designation,
    department_id,
    location_id,
    salary
)
VALUES (
    101,
    'Rahul',
    'M',
    25,
    'Data Analyst',
    1,
    1,
    30000.00
);

SELECT * FROM Employees;

