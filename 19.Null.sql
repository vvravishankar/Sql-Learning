-- In SQL there may be some records in a table that do not have values or data for every field and those fields are termed as a NULL value.
--NULL values could be possible because at the time of data entry information is not available. So SQL supports a special value known as NULL which is used to represent the values of attributes that may be unknown or not apply to a tuple. SQL places a NULL value in the field in the absence of a user-defined value. For example, the Apartment_number attribute of an address applies only to addresses that are in apartment buildings and not to other types of residences. So, NULL values are those values in which there is no data value in the particular field in the table.

/*
Importance of NULL Value
It is important to understand that a NULL value differs from a zero value.
A NULL value is used to represent a missing value, but it usually has one of three different interpretations: 
The value unknown (value exists but is not known)
Value not available (exists but is purposely withheld)
Attribute not applicable (undefined for this tuple)
It is often not possible to determine which of the meanings is intended. Hence, SQL does not distinguish between the different meanings of NULL.


Principles of NULL values
Setting a NULL value is appropriate when the actual value is unknown, or when a value is not meaningful.
A NULL value is not equivalent to a value of ZERO if the data type is a number and is not equivalent to spaces if the data type is a character.
A NULL value can be inserted into columns of any data type.
A NULL value will evaluate NULL in any expression.
Suppose if any column has a NULL value, then UNIQUE, FOREIGN key, and CHECK constraints will ignore by SQL.

*/

-- IS NULL Operator

	SELECT Fname, Lname FROM Employee WHERE SSN IS NULL;
	
-- IS NOT NULL Operator
	SELECT COUNT(*) AS Count FROM Employee WHERE SSN IS NOT NULL;
	
-- Updating NULL Values in a Table
--We can update the NULL values present in a table using the UPDATE statement in SQL. To do so, we can use the IS NULL operator in the WHERE clause to select the rows with NULL values and then we can set the new value using the SET keyword.

	UPDATE Employee
	SET SSN = '789-01-2345'
	WHERE Fname = 'Aditya' AND Lname = 'Arpan';
