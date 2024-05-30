-- An index is a schema object. It is used by the server to speed up the retrieval of rows by using a pointer. It can reduce disk I/O(input/output) by using a rapid path access method to locate data quickly.An index helps to speed up select queries and where clauses, but it slows down data input, with the update and the insert statements. Indexes can be created or dropped with no effect on the data. In this article, we will see how to create, delete, and use the INDEX in the database.  

-- Creating an Index

	CREATE INDEX index ON TABLE column;
	
-- For Multiple Columns
	CREATE INDEX index ON TABLE (column1, column2,…..);
	
--For Unique Indexes :- Unique indexes are used for the maintenance of the integrity of the data present in the table as well as for fast performance, it does not allow multiple values to enter into the table.

	CREATE UNIQUE INDEX index 
	ON TABLE column;
	
-- Removing an Index
	DROP INDEX index;
	
--Altering an Index
	ALTER INDEX IndexName
	ON TableName REBUILD;