-- The HAVING clause was introduced in SQL to allow the filtering of query results based on aggregate functions and groupings, which cannot be achieved using the WHERE clause that is used to filter individual rows.

-- This clause was included in SQL as the WHERE keyword failed when we use it with aggregate expressions. Having is a very generally used clause in SQL. Similar to WHERE it helps to apply conditions, but HAVING works with groups. If you wish to filter a group, the HAVING clause comes into action.

/*
Note:-
Having clause is used to filter data according to the conditions provided.
Having a clause is generally used in reports of large data.  
Having clause is only used with the SELECT clause.
The expression in the syntax can only have constants.
In the query, ORDER BY  is to be placed after the HAVING clause, if any.
HAVING Clause is implemented in column operation.
Having clause is generally used after GROUP BY.              
*/

	SELECT col_1, function_name(col_2)
	FROM tablename
	WHERE condition
	GROUP BY column1, column2
	HAVING Condition
	ORDER BY column1, column2;
	
	SELECT Department, sum(Salary) as Salary
	FROM employee
	GROUP BY department;
	
	SELECT Department, sum(Salary) as Salary
	FROM employee
	GROUP BY department
	HAVING SUM(Salary) >= 50000; 