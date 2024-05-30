/*
SQL :- Structured Query Language (SQL) is a specialized programming language for managing relational database data. It allows users to store, manipulate, and retrieve data efficiently in databases like MySQL, SQL Server, Oracle, and more.


Databases
Databases are structured collections of data organized into tables, rows, and columns. They serve as repositories for storing information efficiently and provide a way to manage and access data.

Tables
Tables are the fundamental building blocks of a database, consisting of rows (records) and columns (attributes or fields). They ensure data integrity and consistency by defining the structure and relationships of the stored information.

Queries
Queries are SQL commands used to interact with databases. They enable users to retrieve, update, insert, or delete data from tables, allowing for efficient data manipulation and retrieval.

Constraints
Constraints are rules applied to tables to maintain data integrity. They define conditions that data must meet to be stored in the database, ensuring accuracy and consistency.

Stored Procedures
Stored procedures are pre-compiled SQL statements stored in the database. They can accept parameters, execute complex operations, and return results, enhancing efficiency, reusability, and security in database management.

Transactions
Transactions are groups of SQL statements that are executed as a single unit of work. They ensure data consistency and integrity by allowing for the rollback of changes if any part of the transaction fails.

SQL Rules

The rules for writing SQL queries are given below:
	1.A ‘;’ is used to end SQL statements.
	2.Statements may be split across lines, but keywords may not.
	3. Identifiers, operator names, and literals are separated by one or more spaces or other delimiters.
	4. A comma (,) separates parameters without a clause.
	5. A space separates a clause.
	6. Reserved words cannot be used as identifiers unless enclosed with double quotes.
	7. Identifiers can contain up to 30 characters.
	8. Identifiers must start with an alphabetic character.
	9. Characters and date literals must be enclosed within single quotes.
	10.Numeric literals can be represented by simple values.
	11.Comments may be enclosed between  and symbols and maybe multi-line.

	
What are SQL commands?
Developers use structured query language (SQL) commands, which are specific keywords or SQL statements, to work with data stored in relational databases. The following are categories for SQL commands.

1. Data Definition Language
SQL commands used to create the database structure are known as data definition language (DDL). Based on the needs of the business, database engineers create and modify database objects using DDL. The CREATE command, for instance, is used by the database engineer to create database objects like tables, views, and indexes.

CREATE :- Creates a new table, a view of a table, or other object in the database.

ALTER :- Modifies an existing database object, such as a table

DROP :-Deletes an entire table, a view of a table, or other objects in the database

2. Data Manipulation Language 
A relational database can be updated with new data using data manipulation language (DML) statements. The INSERT command, for instance, is used by an application to add a new record to the database.

SELECT:- Retrieves certain records from one or more tables.

INSERT:- Creates a record.

UPDATE:- Modifies records.

DELETE:- Deletes records.

3. Data Query Language
Data retrieval instructions are written in the data query language (DQL), which is used to access relational databases. The SELECT command is used by software programs to filter and return particular results from a SQL table. 

4. Data Control language
Data control language (DCL) is a programming language used by database administrators to control or grant other users access to databases. For instance, they can allow specific applications to manipulate one or more tables by using the GRANT command.

GRANT:- Gives a privilege to the user.

REVOKE:- Takes back privileges granted by the user.

5. Transaction Control Language
To automatically update databases, the relational engine uses transaction control language (TCL). For instance, the database can reverse a mistaken transaction using the ROLLBACK command.

Uses of SQL
SQL is used for interacting with databases. These interactions include:

Data definition: It is used to define the structure and organization of the stored data and the relationships among the stored data items.

Data retrieval: SQL can also be used for data retrieval.

Data manipulation: If the user wants to add new data, remove data, or modifying in existing data then SQL provides this facility also.
Access control: SQL can be used to restrict a user’s ability to retrieve, add, and modify data, protecting stored data against unauthorized access.
Data sharing: SQL is used to coordinate data sharing by concurrent users, ensuring that changes made by one user do not inadvertently wipe out changes made at nearly the same time by another user.

SQL also differs from other computer languages because it describes what the user wants the computer to do rather than how the computer should do it. (In more technical terms, SQL is a declarative or descriptive language rather than a procedural one.)

SQL contains no IF statement for testing conditions, and no GOTO, DO, or FOR statements for program flow control. Rather, SQL statements describe how a collection of data is to be organized, or what data is to be retrieved or added to the database. The sequence of steps to do those tasks is left for the DBMS to determine.

*/


