-- ============================================================
-- MySQL Assignment 1 - DDL Commands & Constraints
-- Employee Database
-- Author: Shanmukh Koyya
-- ============================================================


-- ============================================================
-- PART A: DDL COMMANDS
-- ============================================================

-- ------------------------------------------------------------
-- 1. DATABASE CREATION
-- ------------------------------------------------------------

CREATE DATABASE employee;

USE employee;


-- ------------------------------------------------------------
-- 2. TABLE CREATION
-- ------------------------------------------------------------

-- Departments Table

CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);


-- Location Table

CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);


-- Employees Table

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


-- Verify created tables

SHOW TABLES;


-- ------------------------------------------------------------
-- 3. TABLE ALTERATION
-- ------------------------------------------------------------

-- Add email column

ALTER TABLE Employees
ADD email VARCHAR(100);


-- Modify designation to support a wider range of values

ALTER TABLE Employees
MODIFY designation VARCHAR(200);


-- Drop age column

ALTER TABLE Employees
DROP COLUMN age;


-- Rename hire_date to date_of_joining

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;


-- Verify Employees structure

DESC Employees;


-- ------------------------------------------------------------
-- 4. TABLE RENAMING
-- ------------------------------------------------------------

-- Rename Departments table

RENAME TABLE Departments TO Departments_Info;


-- Rename Location table

RENAME TABLE Location TO Locations;


-- Verify renamed tables

SHOW TABLES;


-- ------------------------------------------------------------
-- 5. TABLE TRUNCATION
-- ------------------------------------------------------------

TRUNCATE TABLE Employees;


-- ------------------------------------------------------------
-- 6. TABLE & DATABASE DROPPING
-- ------------------------------------------------------------

-- Drop Employees table

DROP TABLE Employees;


-- Drop employee database

DROP DATABASE employee;


-- ============================================================
-- PART B: CONSTRAINTS
-- ============================================================

-- ------------------------------------------------------------
-- 1. DATABASE RECREATION
-- ------------------------------------------------------------

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;


-- ------------------------------------------------------------
-- 2. DEPARTMENTS TABLE
-- ------------------------------------------------------------

-- department_id uniquely identifies each department
-- department_name cannot be NULL or duplicated

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);


-- ------------------------------------------------------------
-- 3. LOCATION TABLE
-- ------------------------------------------------------------

-- location_id is automatically generated
-- location cannot be NULL or duplicated

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);


-- ------------------------------------------------------------
-- 4. EMPLOYEES TABLE
-- ------------------------------------------------------------

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


-- ============================================================
-- SAMPLE DATA
-- ============================================================

-- Departments

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'IT');


-- Location

INSERT INTO Location (location)
VALUES
('Visakhapatnam');


-- Employees
-- hire_date is intentionally omitted to demonstrate
-- DEFAULT CURRENT_DATE.

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


-- ============================================================
-- VERIFICATION
-- ============================================================

SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;


-- ============================================================
-- END OF ASSIGNMENT
-- ============================================================
