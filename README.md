# MySQL DDL Commands & Constraints

## 📌 Project Overview

This project demonstrates the creation and management of an Employee Database using MySQL.

The assignment covers Data Definition Language (DDL) commands and database constraints using three related tables:

- Departments
- Location
- Employees

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL

## 🗄️ Database Schema

**Employee Database**

- **Departments**
  - department_id
  - department_name

- **Location**
  - location_id
  - location

- **Employees**
  - employee_id
  - employee_name
  - gender
  - age
  - hire_date
  - designation
  - department_id
  - location_id
  - salary

## 📚 DDL Commands Covered

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE
- DROP DATABASE

## 🔐 Constraints Covered

- PRIMARY KEY
- NOT NULL
- UNIQUE
- AUTO_INCREMENT
- ENUM
- CHECK
- DEFAULT
- FOREIGN KEY

## 🧪 Constraint Testing

The project includes testing for:

- Duplicate department IDs
- Duplicate department names
- NULL department names
- Duplicate locations
- NULL locations
- Invalid gender values
- Age below 18
- NULL employee names
- Duplicate employee IDs
- Invalid department IDs
- Invalid location IDs

## 🎯 Learning Outcomes

Through this assignment, I practiced:

- Creating databases and tables
- Modifying table structures
- Renaming database objects
- Truncating and dropping tables
- Applying SQL constraints
- Establishing relationships between tables
- Testing database integrity

## Project files

| File | Purpose |
|---|---|
| [DDL Commands & Constraints — Assignment 1](sql/DDL%20Commands%20%26%20Constraints%20-%20Assignment%201.sql) | Demonstrates table changes, renaming, truncation, and dropping objects |
| [Employee database script](sql/employee_database.sql) | Creates related tables, applies constraints, inserts sample data, and verifies the schema |

## Safety note

**These scripts contain destructive DDL commands** such as `TRUNCATE TABLE`, `DROP TABLE`, and `DROP DATABASE`. They are intended for a disposable MySQL learning database. Review the statements before executing and never run them against production data or a database containing important information.

## 👨‍💻 Author

**Shanmukh Koyya**

Aspiring Data Analyst | SQL | Power BI | Excel | Python
