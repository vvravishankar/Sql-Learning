--The SQL WITH clause allows you to give a sub-query block a name (a process also called sub-query refactoring), which can be referenced in several places within the main SQL query. 

	WITH temporaryTable(averageValue) as
		(SELECT avg(Salary) from Employee)
    SELECT EmployeeID,Name, Salary 
    FROM Employee, temporaryTable 
    WHERE Employee.Salary > temporaryTable.averageValue;