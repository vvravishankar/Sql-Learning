-- SQL Join operation combines data or rows from two or more tables based on a common field between them.SQL JOIN clause is used to query and access data from multiple tables by establishing logical relationships between them. It can access data from multiple tables simultaneously using common key values shared across different tables. 

/*
Types of JOIN in SQL
 There are many types of Joins in SQL. Depending on the use case, you can use different type of SQL JOIN clause. Here are the frequently used SQL JOIN types:
	INNER JOIN
	LEFT JOIN
	RIGHT JOIN
	FULL JOIN
	NATURAL JOIN 
*/

-- The INNER JOIN keyword selects all rows from both the tables as long as the condition is satisfied. This keyword will create the result-set by combining all rows from both the tables where the condition satisfies i.e value of the common field will be the same. 

	SELECT StudentCourse.COURSE_ID, Student.NAME, Student.AGE FROM Student
	INNER JOIN StudentCourse
	ON Student.ROLL_NO = StudentCourse.ROLL_NO;
	
-- LEFT JOIN returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join. For the rows for which there is no matching row on the right side, the result-set will contain null. LEFT JOIN is also known as LEFT OUTER JOIN.

	SELECT Student.NAME,StudentCourse.COURSE_ID 
	FROM Student
	LEFT JOIN StudentCourse 
	ON StudentCourse.ROLL_NO = Student.ROLL_NO;
	
-- RIGHT JOIN returns all the rows of the table on the right side of the join and matching rows for the table on the left side of the join.It is very similar to LEFT JOIN For the rows for which there is no matching row on the left side, the result-set will contain null. RIGHT JOIN is also known as RIGHT OUTER JOIN. 

	SELECT Student.NAME,StudentCourse.COURSE_ID 
	FROM Student
	RIGHT JOIN StudentCourse 
	ON StudentCourse.ROLL_NO = Student.ROLL_NO;
	
-- FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both tables. For the rows for which there is no matching, the result-set will contain NULL values.

	SELECT Student.NAME,StudentCourse.COURSE_ID 
	FROM Student
	FULL JOIN StudentCourse 
	ON StudentCourse.ROLL_NO = Student.ROLL_NO;
	
-- self join is a regular join that is used to join a table with itself. It basically allows us to combine the rows from the same table based on some specific conditions. It is very useful and easy to work with, and it allows us to retrieve data or information which involves comparing records within the same table.

	SELECT e.employee_name AS employee,
	m.employee_name AS managerFROM 
	GFGemployees AS eJOIN GFGemployees 
	AS m ON e.manager_id = m.employee_id;

-- SQL CROSS JOIN returns all the records from the left and right tables. CROSS JOIN returns a combination of each row in the left table paired with each row in the right table.Cross Join in SQL produces a result set that contains the cartesian product of two or more tables. Cross join is also called a Cartesian Join. 

	SELECT *
	FROM CUSTOMER
	CROSS JOIN ORDERS;


-- Natural join can join tables based on the common columns in the tables being joined. A natural join returns all rows by matching values in common columns having same name and data type of columns and that column should be present in both tables.

	
-- SQL UNION operator combines result sets of two or more SELECT statements into one results set.
	-- Each table used within UNION must have the same number of columns.
	-- The columns must have the same data types.
	-- The columns in each table must be in the same order
	
-- UNION returns unique rows, eliminating duplicate entries from the result set.
	SELECT Country FROM Emp1
	UNION
	SELECT Country FROM Emp2
	ORDER BY Country;

-- UNION ALL includes all rows, including duplicate rows.

	SELECT Country, Name FROM Emp1
	WHERE Name='Aditya'
	UNION ALL
	SELECT Country, Name FROM Emp2
	WHERE Country='Ireland'
	ORDER BY Country;	

	
	
-- Note: SQL UNION and UNION ALL difference is that UNION operator removes duplicate rows from results set and UNION ALL operator retains all rows, including duplicate.