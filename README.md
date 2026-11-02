# 🗄️ MYSQL SCHEMA DESIGN WORKSHOP
**Employee database · DDL and integrity constraints**

> [!CAUTION]
> Scripts include DROP DATABASE, DROP TABLE and TRUNCATE operations. Use a disposable MySQL environment only. Never execute against production or important data.

## Relationship sketch
<p align="center">🏢 <b>Departments</b>　← department_id ←　👤 <b>Employees</b>　→ location_id →　📍 <b>Location</b></p>

## Table blueprint
| Table | Example fields |
|---|---|
| Departments | department_id, department_name |
| Location | location_id, location |
| Employees | employee_id, name, gender, age, hire_date, designation, department_id, location_id, salary |

## DDL command palette
| Command | Use |
|---|---|
| CREATE DATABASE / TABLE | Build objects |
| ALTER TABLE | Change definition |
| RENAME TABLE | Rename object |
| TRUNCATE TABLE | Empty rows |
| DROP TABLE / DATABASE | Remove objects |

## Constraint lab
PRIMARY KEY · NOT NULL · UNIQUE · AUTO_INCREMENT · ENUM · CHECK · DEFAULT · FOREIGN KEY

Test cases include duplicate identifiers, missing values, invalid gender/age, duplicate locations and invalid foreign-key references.

## Open SQL scripts
- [DDL commands and constraints](sql/DDL%20Commands%20%26%20Constraints%20-%20Assignment%201.sql)
- [Employee database script](sql/employee_database.sql)

## Safe lab routine
READ SCRIPT → CONFIRM TARGET → USE PRACTICE DATABASE → RUN IN SECTIONS → INSPECT RESULTS

This workshop focuses on database structure and integrity, not business analysis.