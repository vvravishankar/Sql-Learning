-- SQL CASE statement is a conditional expression that allows users to execute different actions based on different conditions. It is similar to if-else logic in other programming languages.CASE Expression in SQL goes through all conditions and stops when any condition is met. It does not check for other conditions after a condition has returned true and returns results based on that condition.If no condition is true then the ELSE part will be executed. If there is no ELSE part, then it returns NULL.


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


	SELECT CustomerName, Age,
	CASE
		WHEN Country = "India" THEN 'Indian'
		ELSE 'Foreign'
	END AS Nationality
	FROM Customer;

-- We can add multiple conditions in the CASE statement by using multiple WHEN clauses.

	SELECT CustomerName, Age,
	CASE
		WHEN Age> 22 THEN 'The Age is greater than 22'
		WHEN Age = 21 THEN 'The Age is 21'
		ELSE 'The Age is over 30'
	END AS QuantityText
	FROM Customer;
	
	
/*
Important Points About CASE Statement
The SQL CASE statement is a conditional expression that allows for the execution of different queries based on specified conditions.
There should always be a SELECT in the CASE statement.
END ELSE is an optional component but WHEN THEN these cases must be included in the CASE statement.
We can make any conditional statement using any conditional operator (like WHERE ) between WHEN and THEN. This includes stringing together multiple conditional statements using AND and OR.
We can include multiple WHEN statements and an ELSE statement to counter with unaddressed conditions.
*/
	
