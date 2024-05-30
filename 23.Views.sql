-- Views in SQL are a kind of virtual table. A view also has rows and columns like tables, but a view doesn’t store data on the disk like a table. View defines a customized query that retrieves data from one or more tables, and represents the data as if it was coming from a single source.We can create a view by selecting fields from one or more tables present in the database. A View can either have all the rows of a table or specific rows based on certain conditions.


-- Creating View from a single table
	CREATE VIEW DetailsView AS
	SELECT NAME, ADDRESS
	FROM StudentDetails
	WHERE S_ID < 5;
	
	SELECT * FROM DetailsView;

--  Creating View from multiple tables

	CREATE VIEW MarksView AS
	SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS
	FROM StudentDetails, StudentMarks
	WHERE StudentDetails.NAME = StudentMarks.NAME;
	
	SELECT * FROM MarksView;
	
-- LISTING ALL VIEWS IN A DATABASE

	SELECT table_name
	FROM information_schema.views
	WHERE table_schema = 'database_name';

--DELETE VIEWS in SQL
	DROP VIEW view_name;
	
-- UPDATE VIEW in SQL
	CREATE OR REPLACE VIEW MarksView AS
	SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS, StudentMarks.AGE
	FROM StudentDetails, StudentMarks
	WHERE StudentDetails.NAME = StudentMarks.NAME;
	
/*
Views in SQL are a kind of virtual table.
The fields in a view can be from one or multiple tables.
We can create a view using the CREATE VIEW statement and delete a view using the DROP VIEW statement.
We can update a view using the CREATE OR REPLACE VIEW statement.
WITH CHECK OPTION clause is used to prevent inserting new rows that do not satisfy the view’s filtering condition.
*/