CREATE DATABASE IF NOT EXISTS India_info;
USE India_info;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoinDate DATE
);

INSERT INTO Employees (FirstName, LastName, Age, Department, Salary, JoinDate)
VALUES 
('Aarav', 'Sharma', 28, 'HR', 50000.00, '2020-05-15'),
('Vihaan', 'Patel', 32, 'IT', 75000.00, '2019-08-20'),
('Ananya', 'Singh', 25, 'Finance', 60000.00, '2021-03-10'),
('Aditi', 'Kumar', 30, 'IT', 80000.00, '2018-11-25'),
('Reyansh', 'Gupta', 27, 'Marketing', 55000.00, '2022-01-05'),
('Ishani', 'Joshi', 29, 'HR', 52000.00, '2020-07-30'),
('Arjun', 'Mehta', 35, 'Finance', 90000.00, '2017-09-12'),
('Saanvi', 'Desai', 26, 'Marketing', 58000.00, '2021-06-18');

SELECT * FROM Employees WHERE Department = 'IT';

SELECT * FROM Employees LIMIT 3;

SELECT * FROM Employees ORDER BY Salary DESC;

SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT Department, COUNT(*) AS EmployeeCount 
FROM Employees 
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY Department 
HAVING AVG(Salary) > 60000;

ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);

UPDATE Employees SET Salary = 65000.00 WHERE EmployeeID = 1;

DELETE FROM Employees WHERE EmployeeID = 5;

TRUNCATE TABLE Employees;

INSERT INTO Employees (FirstName, LastName, Age, Department, Salary, JoinDate)
VALUES 
('Aarav', 'Sharma', 28, 'HR', 50000.00, '2020-05-15'),
('Vihaan', 'Patel', 32, 'IT', 75000.00, '2019-08-20'),
('Ananya', 'Singh', 25, 'Finance', 60000.00, '2021-03-10'),
('Aditi', 'Kumar', 30, 'IT', 80000.00, '2018-11-25'),
('Reyansh', 'Gupta', 27, 'Marketing', 55000.00, '2022-01-05'),
('Ishani', 'Joshi', 29, 'HR', 52000.00, '2020-07-30'),
('Arjun', 'Mehta', 35, 'Finance', 90000.00, '2017-09-12'),
('Saanvi', 'Desai', 26, 'Marketing', 58000.00, '2021-06-18');

DROP TABLE Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoinDate DATE
);

INSERT INTO Employees (FirstName, LastName, Age, Department, Salary, JoinDate)
VALUES 
('Aarav', 'Sharma', 28, 'HR', 50000.00, '2020-05-15'),
('Vihaan', 'Patel', 32, 'IT', 75000.00, '2019-08-20'),
('Ananya', 'Singh', 25, 'Finance', 60000.00, '2021-03-10'),
('Aditi', 'Kumar', 30, 'IT', 80000.00, '2018-11-25'),
('Reyansh', 'Gupta', 27, 'Marketing', 55000.00, '2022-01-05'),
('Ishani', 'Joshi', 29, 'HR', 52000.00, '2020-07-30'),
('Arjun', 'Mehta', 35, 'Finance', 90000.00, '2017-09-12'),
('Saanvi', 'Desai', 26, 'Marketing', 58000.00, '2021-06-18');

SELECT FirstName, LastName, 
    CASE 
        WHEN Salary > 70000 THEN 'High Salary'
        WHEN Salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM Employees;

WITH HighEarners AS (
    SELECT * FROM Employees WHERE Salary > 70000
)
SELECT * FROM HighEarners;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e 
INNER JOIN Departments d ON e.Department = d.DepartmentName;

-- LEFT JOIN
SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e 
LEFT JOIN Departments d ON e.Department = d.DepartmentName;

-- RIGHT JOIN
SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e 
RIGHT JOIN Departments d ON e.Department = d.DepartmentName;

-- CROSS JOIN
SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e 
CROSS JOIN Departments d;

-- SELF JOIN
SELECT e1.FirstName AS Employee1, e2.FirstName AS Employee2 
FROM Employees e1 
JOIN Employees e2 ON e1.Department = e2.Department 
WHERE e1.EmployeeID <> e2.EmployeeID;
