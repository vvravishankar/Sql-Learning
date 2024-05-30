-- SQL AND and OR operators are used for data filtering and getting precise results based on conditions. They are used with the WHERE clause and are also called conjunctive operators.AND and OR operators in SQL can be combined to test for multiple conditions in a SELECT, INSERT, UPDATE, or DELETE statement. When combining these conditions, it is important to use parentheses so that the database knows what order to evaluate each condition.

-- The AND operator in SQL only displays those records where all conditions are true, i.e. both condition1 and condition2 are True. 
	SELECT * FROM Student WHERE Age = 18 AND ADDRESS = 'Delhi';
	
-- The OR Operator in SQL displays the records where any one condition is true, i.e. either condition1 or condition2 is True.
	SELECT * FROM Student WHERE NAME = 'Ram' OR NAME = 'SUJIT';
	
--Combining SQL AND and OR Operators
	SELECT * FROM Student WHERE Age = 18 AND (NAME = 'Ram' OR NAME = 'RAMESH');

	
--SQL LIKE operator is used with the WHERE clause to search for a specified pattern in a column. LIKE operator finds and returns the rows that fit in the given pattern.LIKE operator is case-insensitive by default in most database systems. This means that if you search for “apple” using the LIKE operator, it will return results that include “Apple”, “APPLE”, “aPpLe”, and so on.
	SELECT * FROM products WHERE name LIKE BINARY 'apple%'
	
/*
LIKE Operator Wild Cards
Wild cards are used with the LIKE operator to search for specific patterns in strings. Wild card characters substitute one or more characters in the string. There are four wildcard characters in SQL:
% (Percent): Represents zero or more characters.
_ (Underscore): Represents a single character.
[] (Square Brackets): Represents any single character within brackets.
– (Hyphen): Specify a range of characters inside brackets.

*/

--Retrieve SupplierID, Name, and Address from suppliers table, where supplier name starts form Ca.
	SELECT SupplierID, Name, Address FROM Suppliers WHERE Name LIKE 'Ca%';

-- Retrieve entire table, where address contains OKHLA.
	SELECT * FROM Suppliers WHERE Address LIKE '%Okhla%';
	
--Retrieve SupplierID, Name and Address of supplier whose name contains “ango” in second substring.
	SELECT SupplierID, Name, Address FROM Suppliers WHERE Name LIKE '_ango%';


	
--The SQL IN operator filters data based on a list of specific values. In general, we can only use one condition in the WHEN clause, but the IN operator allows us to specify multiple values.The IN Operator in SQL is used to specify multiple values/sub-queries in the WHERE clause. It provides an easy way to handle multiple OR conditions.

	SELECT Fname, Lname FROM employee WHERE Address IN ('Delhi','Himachal');

--We can use the SQL IN with the NOT operator to exclude specified data from our result.
	SELECT Fname FROM employee WHERE Address NOT IN ('Delhi', 'Lucknow');
	
--Now, we will write a query to fetch details of all employees who are managers. This can be done by using nested SELCT queries with the IN operator.
	SELECT * FROM employee WHERE Ssn IN (SELECT Ssn FROM manager);
	
--SQL NOT Operator is used to return the opposite result or negative result. It is a logical operator in SQL, that negates the boolean expression in the WHERE clause.It is mostly used to specify what should not be included in the results table.
--Alternatively you can use <> ( Not Operator) to get the desired result
	SELECT * FROM Customer WHERE Country <>'USA';
	
--SQL IS NULL operator is a logical operator in SQL used to check the empty values (NULL values) in a column.For example, suppose we have a table “student”. Our table 3 columns- “id”, “name”, and “rank”. Now if we want to fetch all the data from the table “student” whose row has NULL data in its rank column, in this type of scenario IS NULL operator is used.

-- IS NULL with WHERE clause
	SELECT * FROM Student WHERE email IS NULL;
-- IS NULL Operator on Multiple Columns
	SELECT * FROM Student WHERE email IS NULL or coding_score IS NULL;
--IS NULL with COUNT() Function
	SELECT count(*) as count_empty_coding_score FROM Student WHERE coding_score IS NULL;
-- IS NULL with UPDATE Statement
	UPDATE Student SET email = 'default@gmail.com' WHERE email IS NULL;
-- IS NULL with DELETE Statement
	DELETE FROM Student WHERE coding_score IS NULL;
	
	
-- SQL BETWEEN operator select the value in the given range, including the start and end values.The BETWEEN operator in SQL is used to get the values present in the given range. The values can be text, date, or numbers.The BETWEEN operator can be used with SELECT, INSERT, UPDATE, and DELETE commands. This operator is particularly useful for filtering records based on a range of values

	 SELECT * FROM STUDENTS WHERE TOTAL_MARKS BETWEEN 100 AND 200 AND DOB BETWEEN "2001-01-01" AND "2003-01-01";
	 
--ALL & ANY are logical operators in SQL. They return boolean value as a result.
--ALL operator is used to select all tuples of SELECT STATEMENT. It is also used to compare a value to every value in another value set or result from a subquery.The ALL operator returns TRUE if all of the subqueries values meet the condition. The ALL must be preceded by comparison operators and evaluates true if all of the subqueries values meet the condition.ALL is used with SELECT, WHERE, HAVING statement.

	SELECT ProductName FROM Products
	WHERE ProductID = ALL (SELECT ProductId
                       FROM OrderDetails
                       WHERE Quantity = 6 OR Quantity = 2);

--ANY compares a value to each value in a list or results from a query and evaluates to true if the result of an inner query contains at least one row.eANY return true if any of the subqueries values meet the condition.ANY must be preceded by comparison operators

	SELECT DISTINCT CategoryID FROM Products 
	WHERE ProductID = ANY (SELECT ProductID 
                       FROM OrderDetails);








	
	
	

