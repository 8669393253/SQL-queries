# SQL Script: Employee Management System

## Overview
This SQL script creates and manages an employee database (`India_info`). It defines employee details, performs various queries, and implements advanced SQL techniques like joins, aggregation, and categorization.

## Features
- **Database & Table Creation:**
  - Creates `India_info` database (if not exists).
  - Defines `Employees` and `Departments` tables.
- **Data Insertion & Modification:**
  - Inserts sample employee records.
  - Updates and deletes employee records.
  - Adds a new column (`Email`).
- **Data Retrieval & Analysis:**
  - Queries employees based on department, salary, and limits.
  - Uses `ORDER BY`, `GROUP BY`, `HAVING`, and aggregate functions.
  - Implements `CASE` statements for salary categorization.
- **Table Operations:**
  - `DROP TABLE` and `TRUNCATE TABLE` for table resets.
  - Recreates `Employees` table after dropping.
- **Advanced SQL Techniques:**
  - Uses `WITH` (CTE) to filter high earners.
  - Performs different types of joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `CROSS JOIN`, `SELF JOIN`).

## Table Structure
### Employees Table
| Column      | Data Type        | Description                           |
|------------|----------------|---------------------------------------|
| EmployeeID | INT (PK, AUTO_INCREMENT) | Unique ID for each employee. |
| FirstName  | VARCHAR(50)     | First name of the employee.          |
| LastName   | VARCHAR(50)     | Last name of the employee.           |
| Age        | INT             | Age of the employee.                 |
| Department | VARCHAR(50)     | Department name.                     |
| Salary     | DECIMAL(10,2)   | Salary of the employee.              |
| JoinDate   | DATE            | Joining date of the employee.        |
| Email      | VARCHAR(100)    | Email address of the employee. (Added later) |

### Departments Table
| Column        | Data Type       | Description                         
|--------------|---------------|----------------------------------------|
| DepartmentID | INT (PK)       | Unique ID for each department.        |
| DepartmentName | VARCHAR(50)  | Name of the department.               |

## Usage
### Running the Script
1. Copy and execute the SQL script in a MySQL-compatible database system.
2. Modify values if needed before execution.
3. Use queries for data retrieval, modification, and analysis.
