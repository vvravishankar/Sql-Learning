--The SQL SELECT Statement retrieves data from a database.
	SELECT column1,column2…. FROM table_name ;
	
	CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int(2),
  Phone int(10)
);
-- Insert some sample data into the Customers table
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23','xxxxxxxxxx'),
       (2, 'Aman ', 'Chopra', 'Australia','21','xxxxxxxxxx'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','xxxxxxxxxx'),
       (4, 'Aditya', 'Arpan', 'Austria','21','xxxxxxxxxx'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','xxxxxxxxxx');
	   
--Fetch CustomerName, LastName from the table Customer:	   
	SELECT CustomerName, LastName FROM Customer;
	
--Fetch All Table using SELECT Statement
	SELECT * FROM Customer;
	
--SELECT Statement with WHERE Clause, Suppose we want to see table values with specific conditions then WHERE Clause is used with select statement. 
	SELECT CustomerName FROM Customer where Age = '21'; 
	
--The GROUP BY Statement in SQL is used to arrange identical data into groups with the help of some functions. i.e. if a particular column has the same values in different rows then it will arrange these rows in a group. 

	SELECT COUNT (item), Customer_id FROM Orders GROUP BY order_id;  
/*
Note:- GROUP BY clause is used with the SELECT statement.
	In the query, the GROUP BY clause is placed after the WHERE clause.
	In the query, the GROUP BY clause is placed before the ORDER BY clause if used.
	In the query, the Group BY clause is placed before the Having clause.
	Place condition in the having clause.
	
HAVING Clause in GROUP BY Clause
We know that the WHERE clause is used to place conditions on columns but what if we want to place conditions on groups? This is where the HAVING clause comes into use. We can use the HAVING clause to place conditions to decide which group will be part of the final result set. Also, we can not use aggregate functions like SUM(), COUNT(), etc. with the WHERE clause. So we have to use the HAVING clause if we want to use any of these functions in the conditions. 	
	
	SELECT column1, function_name(column2)

	FROM table_name

	WHERE condition

	GROUP BY column1, column2

	HAVING condition

	ORDER BY column1, column2;
	
*/
	
--The HAVING clause was introduced in SQL to allow the filtering of query results based on aggregate functions and groupings, which cannot be achieved using the WHERE clause that is used to filter individual rows.
-- In simpler terms MSSQL, the HAVING clause is used to apply a filter on the result of GROUP BY based on the specified condition.

	CREATE TABLE Employee (
	  EmployeeId int,
	  Name varchar(20),
	  Gender varchar(20),
	  Salary int,
	  Department varchar(20),
	  Experience varchar(20)
	);

	INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
	VALUES (6, 'Rahul Patel', 'Male', 65000, 'Sales', '5 years');

	INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
	VALUES (7, 'Nisha Gupta', 'Female', 55000, 'Marketing', '4 years');

	INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
	VALUES (8, 'Vikram Singh', 'Male', 75000, 'Finance', '7 years');

	INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
	VALUES (9, 'Aarti Desai', 'Female', 50000, 'IT', '3 years');
		
	SELECT Department, sum(Salary) as Salary
	FROM employee
	GROUP BY department;

--Now if we need to display the departments where the sum of salaries is 50,000 or more. In this condition, we will use the HAVING Clause.
	SELECT Department, sum(Salary) as Salary
	FROM employee
	GROUP BY department
	HAVING SUM(Salary) >= 50000;  
	
		
-- The ORDER BY statement in SQL is used to sort the fetched data in either ascending or descending according to one or more columns. It is very useful to present data in a structured manner. default is ASC
	SELECT * FROM Customer ORDER BY Age DESC;  

--SQL TOP, LIMIT, and FETCH FIRST clauses are used to retrieve a specific number of records from a table. These clauses are especially useful in large datasets with thousands of records

-- SQL SELECT TOP with ORDER BY Clause Example
	SELECT TOP 4*
	FROM Customer
	ORDER BY Salary DESC;
	
--SQL SELECT TOP Clause with WHERE Clause Example
	SELECT TOP 2*
	FROM Employee
	WHERE Salary>2000
	ORDER BY Salary;

--SQL SELECT TOP PERCENT Clause Example, The PERCENT keyword is utilized to select the primary and percent of all-out rows. For example,
	SELECT TOP 50 PERCENT* FROM Employee;
	
--SQL TOP PERCENT with WHERE Clause Example
	SELECT TOP 50 PERCENT*
	FROM Employee
	WHERE Salary<50000
	
--SQL LIMIT Clause limits the number of results returned in the results set. 
	SELECT * FROM Employee
	WHERE Salary = 45000
	LIMIT 2;
	
-- SQL LIMIT With OFFSET Clause Example The OFFSET keyword is utilized to indicate beginning rows from where to select rows. 
	SELECT * FROM Employee LIMIT 2 OFFSET 2;
--2 rows from the beginning of the third row (i.e., OFFSET 2 means, the initial 2 rows are excluded or avoided).

--SELECT IN with List Example

	SELECT * FROM
	STUDENT
	WHERE course_id
	IN (1, 2, 3);
	
--SELECT IN with the Sub-query Example

	SELECT * FROM STUDENT
	WHERE course_id
	IN (SELECT course_id FROM COURSE
	WHERE duration_of_course = 3);


--The UPDATE statement in SQL is used to update the data of an existing table in the database. We can update single columns as well as multiple columns using the UPDATE statement as per our requirement.

--Update Single Column Using UPDATE Statement Example
	UPDATE Customer SET CustomerName = 'Nitin' WHERE Age = 22;
	
--Updating Multiple Columns using UPDATE Statement Example
	UPDATE Customer SET CustomerName = 'Satyam', 
	Country = 'USA' WHERE CustomerID = 1;
	
--Omitting WHERE Clause in UPDATE Statement If we omit the WHERE clause from the update query then all of the rows will get updated.
	UPDATE Customer SET CustomerName = 'Shubham';
