-- The LIMIT clause in SQL allows users to control the amount of data retrieved and displayed in the result set. It is useful when only a subset of records is needed for analysis or display purposes in large databases with thousands of records.

	CREATE TABLE student (
	  id INT PRIMARY KEY,
	  name VARCHAR(50),
	  age INT
	);

	INSERT INTO student (id, name, age)
	VALUES (1, 'Shubham Thakur', 18),
		   (2, 'Aman Chopra', 19),
		   (3, 'Bhavika uppala', 20),
		   (4,'Anshi Shrivastava',22);


	SELECT * FROM student LIMIT 3;
	
--LIMIT with ORDER BY Clause

	SELECT * FROM Student ORDER BY Grade DESC LIMIT 3;

-- LIMIT OFFSET parameter skips a specified number of rows before returning the result set.OFFSET can only be used with the ORDER BY clause. It cannot be used on its own.OFFSET value must be greater than or equal to zero. It cannot be negative, else returns an error. 

	SELECT * FROM Student ORDER BY age LIMIT 2,5;
	
--The WHERE clause can also be used with LIMIT. It produces the rows that matched the condition after checking the specified condition in the table.

SELECT age FROM Student WHERE id<4 ORDER BY age LIMIT 2, 1;