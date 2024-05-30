--In SQL, constraints are some set of rules that are applied to the data type of the specified table, Or we can say that using constraints we can apply limits on the type of data that can be stored in the particular column of the table.
/*
In SQL, the following restrictions are frequently applied:
NULL VALUE: A column cannot have a NULL value by using the NOT NULL flag.
UNIQUE KEY: A unique value makes sure that each value in a column is distinct.
PRIMARY KEY: A NOT NULL and UNIQUE combination. Identifies each row in a table individually.
A FOREIGN KEY: Guards against actions that would break links between tables.
CHECK: Verifies that the values in a column meet a particular requirement.
*/

--NOT NULL forces particular values or records should not to hold a null value. It is somewhat similar to the primary key condition as the primary key can’t have null values in the table although both are completely different things.
	CREATE TABLE Emp(
    EmpID INT NOT NULL PRIMARY KEY,
    Name VARCHAR (50),
    Country VARCHAR(50),
    Age int(2),
  Salary int(10));
  
-- UNIQUE: It means that in that particular column, the data should be unique.SQL Constraints Unique constraints in SQL is used to check whether the sub-query has duplicate tuples in its result.
	SELECT table.ID
	FROM  table
	WHERE UNIQUE (SELECT table2.ID
				  FROM table2
				  WHERE table.ID = table2.ID)
				  
-- PRIMARY KEY in SQL is a column (or group of columns) that uniquely identifies the records in that table. A primary key must contain unique values and can not have any NULL value.

	CREATE TABLE Persons (
	  PersonID int NOT NULL PRIMARY KEY,
	  LastName varchar(255) NOT NULL,
	  FirstName varchar(255),
	  Age int
	);
	
-- Foreign Key constraint establishes a relationship between two tables by requiring values in one table’s column to match values in another table’s primary key column.A foreign key is a column or a combination of columns in a table that establishes a link between two tables in a relational database. It refers to the primary key in another table, creating a relationship between them.The foreign key constraint enforces referential integrity, ensuring that values in the foreign key column must match values in the primary key column of the referenced table.

-- A composite key is made by the combination of two or more columns in a table that can be used to uniquely identify each row in the table when the columns are combined uniqueness of a row is guaranteed, but when it is taken individually it does not guarantee uniqueness, or it can also be understood as a primary key made by the combination of two or more attributes to uniquely identify every row in a table. 
	CREATE TABLE student
	(rollNumber INT, 
	name VARCHAR(30), 
	class VARCHAR(30), 
	section VARCHAR(1), 
	mobile VARCHAR(10),
	PRIMARY KEY (rollNumber, mobile));
	
-- The keys that contain all the properties needed to become a Candidate Key are known as Alternate Keys. These are basically secondary Candidate Keys that can uniquely identify a row in a table. So, Alternate Keys are also sometimes known as “Secondary Keys”.In other words, we can define the Alternate key as the set of Candidate Keys other than the Primary Key. There can be many Candidate Keys for a given table and out of all these the Database Administrators selects only one of these as the Primary Key. Hence, the other Candidate Keys which are not used as a Primary Key are the “Alternate Keys”. 


-- Check Constraint is used to specify a predicate that every tuple must satisfy in a given relation. It limits the values that a column can hold in a relation.

	CREATE TABLE pets(
			ID INT NOT NULL,
			Name VARCHAR(30) NOT NULL,
			Breed VARCHAR(20) NOT NULL,
			Age INT,
			GENDER VARCHAR(9),
			PRIMARY KEY(ID),
			check(GENDER in ('Male', 'Female', 'Unknown'))
			);

-- The DEFAULT Constraint is used to fill a column with a default and fixed value. The value will be added to all new records when no other value is provided.

	CREATE TABLE Student (
	ID int NOT NULL,
	Name varchar(255),
	Age int,
	Location varchar(255) DEFAULT 'Noida');
	INSERT INTO Student VALUES (4, 'Mira', 23, 'Delhi');
	INSERT INTO Student VALUES (5, 'Hema', 27,DEFAULT);
	INSERT INTO Student VALUES (6, 'Neha', 25, 'Delhi');
	INSERT INTO Student VALUES (7, 'Khushi', 26,DEFAULT);


