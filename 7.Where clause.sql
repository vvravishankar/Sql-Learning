--WHERE keyword is used for fetching filtered data in a result set. It is used to fetch data according to particular criteria. WHERE keyword can also be used to filter data by matching patterns.

List of Operators that Can be Used with WHERE Clause

--Comparison Operators
-- = : Equal to
	SELECT * FROM Employees WHERE age = 30;
-- <> or != : Not equal to
	SELECT * FROM Employees WHERE age <> 30;
-- > : Greater than
	SELECT * FROM Employees WHERE age > 30;
-- < : Less than
	SELECT * FROM Employees WHERE age < 30;

-- >= : Greater than or equal to
	SELECT * FROM Employees WHERE age >= 30;
-- <= : Less than or equal to
	SELECT * FROM Employees WHERE age <= 30;

--Logical Operators
--AND : Combines multiple conditions; all must be true
	SELECT * FROM Employees WHERE age > 25 AND salary > 50000;

--OR : Combines multiple conditions; at least one must be true
	SELECT * FROM Employees WHERE age > 25 OR salary > 50000;

--NOT : Negates a condition
	SELECT * FROM Employees WHERE NOT age = 30;

--Range Operators
--BETWEEN ... AND ... : Selects values within a given range
	SELECT * FROM Employees WHERE age BETWEEN 25 AND 30;

--Set Operators
-- IN : Selects values within a set of values
	SELECT * FROM Employees WHERE age IN (25, 30, 35);

--Pattern Matching Operators
-- LIKE : Searches for a specified pattern in a column
	-- % : Represents zero or more characters
	-- _ : Represents a single character
		SELECT * FROM Employees WHERE name LIKE 'A%';  -- Names starting with 'A'
		SELECT * FROM Employees WHERE name LIKE '_a%'; -- Names with 'a' as the second character

--Null Operators
-- IS NULL : Checks for null values
	SELECT * FROM Employees WHERE age IS NULL;
-- IS NOT NULL : Checks for non-null values
	SELECT * FROM Employees WHERE age IS NOT NULL;

--Other Useful Operators
--EXISTS : Checks for the existence of rows in a subquery
	SELECT * FROM Employees WHERE EXISTS (SELECT 1 FROM Departments WHERE Departments.id = Employees.department_id);
