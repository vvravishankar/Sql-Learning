-- Window functions apply to aggregate and ranking functions over a particular window (set of rows). OVER clause is used with window functions to define that window. OVER clause does two things : 
-- Partitions rows to form a set of rows. (PARTITION BY clause is used) 
-- Orders rows within those partitions into a particular order. (ORDER BY clause is used) 

-- Aggregate Window Function :- Various aggregate functions such as SUM(), COUNT(), AVERAGE(), MAX(), and MIN() applied over a particular window (set of rows) are called aggregate window functions. 

	SELECT Name, Age, Department, Salary, 
	 AVG(Salary) OVER( PARTITION BY Department) AS Avg_Salary
	 FROM employee
	 
-- RANK() – As the name suggests, the rank function assigns rank to all the rows within every partition. Rank is assigned such that rank 1 given to the first row and rows having same value are assigned same rank. For the next rank after two same rank values, one rank value will be skipped. For instance, if two rows share­ rank 1, the next row gets rank 3, not 2.

-- DENSE_RANK() – It assigns rank to each row within partition. Just like rank function first row is assigned rank 1 and rows having same value have same rank. The difference between RANK() and DENSE_RANK() is that in DENSE_RANK(), for the next rank after two same rank, consecutive integer is used, no rank is skipped. 

-- ROW_NUMBER() – ROW_NUMBER() gives e­ach row a unique number. It numbers rows from one­ to the total rows. The rows are put into groups base­d on their values. Each group is called a partition. In e­ach partition, rows get numbers one afte­r another. No two rows have the same­ number in a partition. This makes ROW_NUMBER() differe­nt from RANK() and DENSE_RANK(). ROW_NUMBER() uniquely identifies e­very row with a sequential inte­ger number. This helps with diffe­rent kinds of data analysis.

/* Note – ORDER BY() should be specified compulsorily while using rank window functions. */
	SELECT 
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS emp_row_no, 
    Name,  
    Department, 
    Salary,
    RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_rank,
    DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_dense_rank
	FROM 
		employee;
		
-- The LEAD() and LAG() function in MySQL are used to get preceding and succeeding value of any row within its partition. These functions are termed as nonaggregate Window functions.

--The LAG() function is used to get value from row that precedes the current row.
-- The LEAD() function is used to get value from row that succeeds the current row.


