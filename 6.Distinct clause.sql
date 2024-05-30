-- The distinct keyword is used in conjunction with the select keyword. It is helpful when there is a need to avoid duplicate values present in any specific columns/table. When we use distinct keywords only the unique values are fetched. 

-- NOTE: If a distinct keyword is used with multiple columns, the distinct combination is displayed in the result set. 

-- Now, to fetch unique names from the NAME field.
	SELECT DISTINCT NAME FROM Student;
	
-- Now, to fetch a unique combination of rows from the whole table.
	SELECT DISTINCT * FROM students;

-- Using Distinct Clause with COUNT() Function
	SELECT COUNT(DISTINCT ROLL_NO)  FROM Students ;