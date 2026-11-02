<div align="center"><h1>🗄️ DATABASE DESIGN STUDIO</h1><h3>MYSQL DDL · EMPLOYEE SCHEMA</h3></div>

> [!CAUTION]
> The scripts contain `DROP DATABASE`, `DROP TABLE` and `TRUNCATE`. Run only in a disposable MySQL environment. Never use production or important data.

## Relational blueprint
```mermaid
erDiagram
 DEPARTMENTS ||--o{ EMPLOYEES : contains
 LOCATION ||--o{ EMPLOYEES : assigned_to
 DEPARTMENTS { int department_id PK
 string department_name }
 LOCATION { int location_id PK
 string location }
 EMPLOYEES { int employee_id PK
 string name
 int department_id FK
 int location_id FK }
```

## Schema operation palette
<table><tr><td><b>CREATE</b><br/>Build database objects</td><td><b>ALTER</b><br/>Change table structure</td><td><b>RENAME</b><br/>Change object name</td></tr><tr><td><b>TRUNCATE</b><br/>Remove all rows</td><td><b>DROP TABLE</b><br/>Remove a table</td><td><b>DROP DATABASE</b><br/>Remove a database</td></tr></table>

## Integrity constraints
`PRIMARY KEY` · `FOREIGN KEY` · `NOT NULL` · `UNIQUE` · `AUTO_INCREMENT` · `CHECK` · `DEFAULT` · `ENUM`

## Script library
- [DDL commands & constraints](sql/DDL%20Commands%20%26%20Constraints%20-%20Assignment%201.sql)
- [Employee database build](sql/employee_database.sql)

## Safe execution protocol
`READ → CHECK TARGET → BACK UP → USE SANDBOX → RUN IN SECTIONS → VERIFY`

This workshop teaches schema structure and integrity rules, not business analysis.