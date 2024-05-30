-- SQL Aggregate functions are functions where the values of multiple rows are grouped as input on certain criteria to form a single value result of more significant meaning.

-- It is used to summarize data, by combining multiple values to form a single result.

-- SQL Aggregate functions are mostly used with the GROUP BY clause of the SELECT statement.

-- Aggregate Functions in SQL
-- Below is the list of SQL aggregate functions, with examples

-- Count():
-- Count(*): Returns the total number of records .i.e 6.
-- Count(salary): Return the number of Non-Null values over the column salary. i.e 5.
-- Count(Distinct Salary):  Return the number of distinct Non-Null values over the column salary .i.e 5.  

-- Sum():
-- sum(salary):  Sum all Non-Null values of Column salary i.e., 310
-- sum(Distinct salary): Sum of all distinct Non-Null values i.e., 250.  

-- Avg():
-- Avg(salary) = Sum(salary) / count(salary) = 310/5
-- Avg(Distinct salary) = sum(Distinct salary) / Count(Distinct Salary) = 250/4  

-- Min():
-- Min(salary): Minimum value in the salary column except NULL i.e., 40.

-- Max():
-- Max(salary): Maximum value in the salary i.e., 80.

CREATE TABLE Employee (
  Id INT PRIMARY KEY,
  Name CHAR(1),  -- Adjust data type and length if names can be longer than a single character
  Salary DECIMAL(10,2)  -- Adjust precision and scale if needed for salaries
);

INSERT INTO Employee (Id, Name, Salary)
VALUES (1, 'A', 802),
       (2, 'B', 403),
       (3, 'C', 604),
       (4, 'D', 705),
       (5, 'E', 606),
       (6, 'F', NULL);


--Count the number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employee;

-- Calculate the total salary
SELECT SUM(Salary) AS TotalSalary FROM Employee;

-- Find the average salary
SELECT AVG(Salary) AS AverageSalary FROM Employee;

-- Get the highest salary
SELECT MAX(Salary) AS HighestSalary FROM Employee;

-- Determine the lowest salary
SELECT MIN(Salary) AS LowestSalary FROM Employee;