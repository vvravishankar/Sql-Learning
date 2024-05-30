--The GROUP BY Statement in SQL is used to arrange identical data into groups with the help of some functions. i.e. if a particular column has the same values in different rows then it will arrange these rows in a group. 


	CREATE TABLE student (
	  name VARCHAR(50),
	  year INT,
	  subject VARCHAR(50)
	);
	INSERT INTO student (name, year, subject) VALUES
	('Alice', 1, 'Mathematics'),
	('Bob', 2, 'English'),
	('Charlie', 3, 'Science'),
	('David', 1, 'History'),
	('Emily', 2, 'Art'),
	('Frank', 3, 'Computer Science');


-- Group By single column
	SELECT NAME, SUM(SALARY) FROM emp GROUP BY NAME;

-- Group By Multiple Columns

	SELECT SUBJECT, YEAR, Count(*) FROM Student GROUP BY SUBJECT, YEAR;

