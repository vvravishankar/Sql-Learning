
--DATABASE:-

--SQL CREATE DATABASE statement creates a new database in SQL-based DBMS.
	CREATE DATABASE <Database_name>;

--We use the SHOW DATABASES command and it will return a list of databases that exist in our system.
	SHOW DATABASES;


--To use a specific database in SQL, we use the USE Statement.
	USE <Database_name>

--DROP DATABASE statement in SQL is used to remove the entire database from the system. Once deleted users can not retrieve the database.
	DROP DATABASE database_name;

--To avoid any error while running the DROP DATABASE command use the IF EXISTS clause, which will delete the database only if it exists in the system.
	DROP DATABASE IF EXISTS Database_Name;


--To rename a database in SQL use the ALTER DATABASE Statement with MODIFY NAME clause.
	ALTER DATABASE [current_database_name] MODIFY NAME = [new_database_name];
	or
	RENAME DATABASE [current_database_name] TO [new_database_name];

--TABLE :- 
--CREATE TABLE command creates a new table in the database in SQL.
	CREATE table table_name
	(
	Column1_name datatype (size),
	column2_name datatype (size),
	.
	.
	columnN datatype(size)
	);
	
	--ex:- 
	CREATE TABLE Customer(
		CustomerID INT PRIMARY KEY,
		CustomerName VARCHAR(50),
		LastName VARCHAR(50),
		Country VARCHAR(50),
		Age INT CHECK (Age >= 0 AND Age <= 99),
		Phone int(10)
	);

--To add data to the table, we use INSERT INTO command,
	INSERT INTO table_name (column1, column2, …) VALUES (value1, value2, …);

	INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23','xxxxxxxxxx'),
       (2, 'Aman ', 'Chopra', 'Australia','21','xxxxxxxxxx'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','xxxxxxxxxx'),
       (4, 'Aditya', 'Arpan', 'Australia','21','xxxxxxxxxx'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','xxxxxxxxxx');

--We can also use CREATE TABLE to create a copy of an existing table. In the new table, it gets the exact column definition all columns or specific columns can be selected.

	CREATE TABLE new_table_name AS
		SELECT column1, column2,…
		FROM existing_table_name
		
	CREATE TABLE SubTable AS
	SELECT CustomerID, CustomerName
	FROM customer;
	
/*Note:- 
CREATE TABLE statement is used to create new table in a database.
It defines the structure of table including name and datatype of columns.
The DESC table_name; command can be used to display the structure of the created table
We can also add constraint to table like NOT NULL, UNIQUE, CHECK, and DEFAULT.
If you try to create a table that already exists, MySQL will throw an error. To avoid this, you can use the CREATE TABLE IF NOT EXISTS syntax.
*/

--SQL DROP TABLE statement deletes data and structure of a table from the database.
	DROP TABLE <Tablename>;

--SQL DELETE is a basic SQL operation used to delete data in a database. SQL DELETE is an important part of database management DELETE can be used to selectively remove records from a database table based on certain conditions.
	DELETE FROM table_name WHERE some_condition;

--Deleting Single Record
	DELETE FROM Customer WHERE CustomerName = 'Nishant'; 

--Deleting Multiple Records
	DELETE FROM Customer WHERE Country = 'Australia'; 

--Delete All of the Records To remove all the entries from the table, you can use the following query:
	DELETE FROM GFG_EMPLOyees;
	Or
	DELETE * FROM GFG_EMPLOyees; 
	
	
--Sometimes we may want to rename our table to give it a more relevant name. For this purpose, we can use ALTER TABLE to rename the name of the table. SQL ALTER TABLE is a command used to modify the structure of an existing table in a database.
	ALTER TABLE table_name RENAME TO new_table_name;
	

--ADD – To add a new column to the table:
	ALTER TABLE table_name ADD column_name datatype;

--MODIFY/ALTER – To change the data type of an existing column:
	ALTER TABLE table_name MODIFY COLUMN column_name datatype;
	
--DROP – To delete an existing column from the table:
	ALTER TABLE table_name DROP COLUMN column_name;

--RENAME COLUMN – To rename an existing column:
	ALTER TABLE table_name RENAME COLUMN old_name TO new_name;

	
--DROP and TRUNCATE in SQL remove data from the table. The main difference between DROP and TRUNCATE commands in SQL is that DROP removes the table or database completely, while TRUNCATE only removes the data, preserving the table structure.
	DROP TABLE table_name;
	
	TRUNCATE TABLE  table_name;
	
--Create Backup of a Table. We can create a backup of a table by creating a duplicate or copy of original database.
	CREATE TABLE Table_Name AS SELECT * FROM Source_Table_Name;

--SQL Backup Table with Specific Column Data Example
	CREATE TABLE stud_2 AS SELECT id,student_name FROM student_information;
	
--SQL Backup Table with No Data Example So, to create a table without any data being copied we can use the help of the WHERE clause which needs to return a FALSE value. For example, we can use WHERE 2<2 or WHERE 1=2.
	CREATE TABLE New_Customer AS SELECT * FROM Customer	WHERE 1!=1;

--Temporary Tables are most likely as Permanent Tables. Temporary Tables are Created in TempDB and are automatically deleted as soon as the last connection is terminated. Temporary Tables helps us to store and process intermediate results. Temporary tables are very useful when we need to store temporary data.

	CREATE TABLE #EmpDetails (id INT, name VARCHAR(25)) 
	
	INSERT INTO #EmpDetails VALUES (01, 'Lalit'), (02, 'Atharva') 
	
	
	




