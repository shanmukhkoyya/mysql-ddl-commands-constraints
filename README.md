# MySQL Schema Workshop

**Topic:** Employee database design with DDL and integrity constraints  
**Environment:** MySQL Server · MySQL Workbench

> [!CAUTION]
> These are destructive learning scripts. They include DROP DATABASE, DROP TABLE and TRUNCATE TABLE operations. Use a disposable practice environment only. Never execute them against production data or a database containing information you need.

## Schema under practice

The exercise uses three related tables:

| Table | Example attributes |
|---|---|
| Departments | department_id, department_name |
| Location | location_id, location |
| Employees | employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary |

The employee table connects to the department and location tables through foreign-key fields.

## DDL command reference

| Command | Purpose in this exercise |
|---|---|
| CREATE DATABASE | Create the practice database |
| CREATE TABLE | Define tables and columns |
| ALTER TABLE | Change a table definition |
| RENAME TABLE | Rename a database object |
| TRUNCATE TABLE | Remove all rows while keeping a table |
| DROP TABLE | Remove a table |
| DROP DATABASE | Remove the database |

## Integrity constraints

PRIMARY KEY · NOT NULL · UNIQUE · AUTO_INCREMENT · ENUM · CHECK · DEFAULT · FOREIGN KEY

## Constraint test cases

The scripts demonstrate checks for duplicate department IDs and names, missing department and location values, duplicate locations, invalid gender values, age below 18, missing employee names, duplicate employee IDs, and invalid department or location references.

## SQL files

| Script | Focus |
|---|---|
| [DDL Commands & Constraints — Assignment 1](sql/DDL%20Commands%20%26%20Constraints%20-%20Assignment%201.sql) | Table changes, renaming, truncation and drop operations |
| [Employee database script](sql/employee_database.sql) | Related-table creation, constraints, sample inserts and schema checks |

## Safe review procedure

1. Read the entire script before execution.
2. Confirm that the selected MySQL connection points to a disposable practice instance.
3. Check the target database name before running any DROP statement.
4. Run the script in sections and inspect the result after each DDL operation.
5. Do not reuse the practice environment for important data.

## What this assignment demonstrates

The focus is database structure and data integrity—not a business analysis. It provides practice with creating and modifying database objects, defining relationships, applying constraints and observing how invalid data is handled.

---

**Shanmukh Koyya** · [GitHub](https://github.com/shanmukhkoyya) · [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)
