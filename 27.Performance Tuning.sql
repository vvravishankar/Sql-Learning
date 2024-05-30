/*

Requirement For SQL Query Optimization
The main goal of SQL query optimization is to reduce the load on system resources and provide accurate results in lesser time. It makes the code more efficient which is important for optimal performance of queries. The major reasons for SQL Query Optimizations are:

Enhancing Performance: The main reason for SQL Query Optimization is to reduce the response time and enhance the performance of the query. The time difference between request and response needs to be minimized for a better user experience.
Reduced Execution Time: The SQL query optimization ensures reduced CPU time hence faster results are obtained. Further, it is ensured that websites respond quickly and there are no significant lags.
Enhances the Efficiency: Query optimization reduces the time spend on hardware and thus servers run efficiently with lower power and memory consumption.
Best Practices For SQL Query Optimization
The optimized SQL queries not only enhance the performance but also contribute to cost savings by reducing resource consumption. Let us see the various ways in which you can optimize SQL queries for faster performance.

1. Use Indexes
Indexes act like internal guides for the database to locate specific information quickly. Identify frequently used columns in WHERE clauses, JOIN conditions, and ORDER BY clauses, and create indexes on those columns. However, creating too many indexes can slow down adding and updating data, so use them strategically.

The database needs to maintain the indexes in addition to the main table data, which adds some overhead. So, it’s important to strike a balance and only create indexes on columns that will provide significant search speed improvements.

2. Use WHERE Clause instead of having
The use of the WHERE clause instead of Having enhances the efficiency to a great extent. WHERE query execute more quickly than HAVING. WHERE filters are recorded before groups are created and HAVING filters are recorded after the creation of groups. This means that using WHERE instead of HAVING will enhance the performance and minimize the time taken.

For Example

SELECT name FROM table_name WHERE age>=18; results in displaying only those names whose age is greater than or equal to 18 whereas
SELECT age COUNT(A) AS Students FROM table_name  GROUP BY age HAVING COUNT(A)>1; results in first renames the row and then displaying only those values which pass the condition
3. Avoid Queries inside a Loop
This is one of the best optimization techniques that you must follow. Running queries inside the loop will slow down the execution time to a great extent. In most cases, you will be able to insert and update data in bulk which is a far better approach as compared to queries inside a loop.

The iterative pattern which could be visible in loops such as for, while and do-while takes a lot of time to execute, and thus the performance and scalability are also affected. To avoid this, all the queries can be made outside loops, and hence, the efficiency can be improved.

4. Use Select instead of Select *
One of the best ways to enhance efficiency is to reduce the load on the database. This can be done by limiting the amount of information to be retrieved from each query. Running queries with Select * will retrieve all the relevant information which is available in the database table. It will retrieve all the unnecessary information from the database which takes a lot of time and enhance the load on the database.

Let’s understand this better with the help of an example. Consider a table name GeeksforGeeks which has columns names like Java, Python, and DSA. 

Select * from GeeksforGeeks; – Gives you the complete table as an output whereas 
Select condition from GeeksforGeeks; –  Gives you only the preferred(selected) value
So the better approach is to use a Select statement with defined parameters to retrieve only necessary information. Using Select will decrease the load on the database and enhances performance.

5. Add Explain to the Beginning of Queries
Explain keywords to describe how SQL queries are being executed. This description includes how tables are joined, their order, and many more. It is a beneficial query optimization tool that further helps in knowing the step-by-step details of execution. Add explain and check whether the changes you made have reduced the runtime significantly or not. Running Explain query takes time so it should only be done during the query optimization process.

6. Keep Wild cards at the End of Phrases
A wildcard is used to substitute one or more characters in a string. It is used with the LIKE operator. LIKE operator is used with where clause to search for a specified pattern. Pairing a leading wildcard with the ending wildcard will check for all records matching between the two wildcards. Let’s understand this with the help of an example. 

Consider a table Employee which has 2 columns name and salary. There are 2 different employees namely Rama and Balram.

Select name, salary From Employee Where name  like ‘%Ram%’;
Select name, salary From Employee Where name  like ‘Ram%’;
In both the cases, now when you search %Ram% you will get both the results Rama and Balram, whereas Ram% will return just Rama. Consider this when there are multiple records of how the efficiency will be enhanced by using wild cards at the end of phrases.

7. Use Exist() instead of Count()
Both Exist() and Count() are used to search whether the table has a specific record or not. But in most cases Exist() is much more effective than Count(). As Exist() will run till it finds the first matching entry whereas Count() will keep on running and provide all the matching records. Hence this practice of SQL query optimization saves a lot of time and computation power. EXISTS stop as the logical test proves to be true whereas COUNT(*) must count each and every row, even after it has passed the test.

8. Avoid Cartesian Products
Cartesian products occur when every row from one table is joined with every row from another table, resulting in a massive dataset. Accidental Cartesian products can severely impact query performance. Always double-check JOIN conditions to avoid unintended Cartesian products. Make sure you’re joining the tables based on the specific relationship you want to explore.

For Example

Incorrect JOIN (Cartesian product): SELECT * FROM Authors JOIN Books; (This joins every author with every book)
Correct JOIN (retrieves books by author): SELECT Authors.name, Books.title FROM Authors JOIN Books ON Authors.id = Books.author_id; (This joins authors with their corresponding books based on author ID).
9. Consider Denormalization
Denormalization involves strategically adding redundant data to a database schema to improve query performance. It can reduce the need for JOIN operations but should be balanced with considerations for data integrity and maintenance overhead. JOIN operations, which combine data from multiple tables, can be slow, especially for complex queries. Denormalization aims to reduce the need for JOINs by copying some data from one table to another.

For Example

Imagine tables for “Customers” and “Orders.” Normally, you’d link them with a foreign key (e.g., customer ID) in the Orders table. To speed up queries that retrieve customer information along with their orders, you could denormalize by adding some customer details (e.g., name, email) directly into the Orders table.

10. Optimize JOIN Operations
JOIN operations combine rows from two or more tables based on a related column. Select the JOIN type that aligns with the data you want to retrieve. For example, to find all customers and their corresponding orders (even if a customer has no orders), use a LEFT JOIN on the customer ID column. The JOIN operation works by comparing values in specific columns from both tables (join condition). Ensure these columns are indexed for faster lookups. Having indexes on join columns significantly improves the speed of the JOIN operation.

Conclusion
Following these best practices for SQL query optimization, you can ensure that your database queries run efficiently and deliver results quickly. This will not only improve the performance of your applications but also enhance the user experience by minimizing wait times. Therefore the key benefits of SQL query optimization are improved performance, faster results, and a better user experience.


Factors Affecting SQL Speed
Some of the major factors that influence the computation and execution time in SQL are:

Table size: Performance may be impacted if your query hits one or more tables with millions of rows or more.
Joins: Your query is likely to be slow if it joins two tables in a way that significantly raises the number of rows in the return set.
Aggregations: Adding several rows together to create a single result needs more processing than just retrieving those values individually.
Other users executing queries: The more queries a database has open at once, the more it must process at once, and the slower it will all be. It can be particularly problematic if other users are using a lot of resources to perform queries that meet some of the aforementioned requirements.


SELECT fields instead of using SELECT *
Avoid SELECT DISTINCT
Create queries with INNER JOIN (not WHERE or cross join)
Use WHERE instead of HAVING to define filters
Use wildcards at the end of a phrase only
Use LIMIT to sample query results
Run your query during off-peak hours


Index Tuning
When choosing and building indexes, database tuning includes index tuning. The index tuning objective is to speed up query processing. It can be challenging to employ indexes in dynamic contexts with numerous ad-hoc searches scheduled in advance. The queries that are based on indexes are subject to index tweaking, and the indexes are generated automatically as needed. Users of the database do not need to take any specific activities to tune the index.

Advantages of Index Tuning
The performance of queries and databases can be improved by using the Index tuning wizard. It accomplishes this using the following methods:

Recommendations for optimal index usage based on query optimizer analysis and workload
Examination of changes in query distribution, index utilization, and performance to determine impact
Suggestion of fine-tuning strategies for problematic queries
Use of SQL Profiler to record activity traces and improve performance
Points to consider while creating indexes:

Short indexes for reduced disk space and faster comparisons
Distinct indexes with minimal duplicates for better selectivity
Clustered indexes covering all row data for optimal performance
Static data columns for clustered indexes to minimize shifting
Utilizing index tuning tools and following best practices is essential for maintaining high-performing SQL Server environments. Regular monitoring, proactive maintenance, and continuous improvement are key to optimizing database performance and supporting critical business applications.



*/