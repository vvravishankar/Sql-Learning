-- In SQL, Pivot and Unpivot are relational operators that are used to transform one table into another in order to achieve more simpler view of table. Conventionally we can say that Pivot operator converts the rows data of the table into the column data. The Unpivot operator does the opposite that is it transform the column based data into rows.

	SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION
	FROM geeksforgeeks 
	PIVOT 
	( 
	SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
	) AS PivotTable 

