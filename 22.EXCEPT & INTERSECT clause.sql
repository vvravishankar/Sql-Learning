--In SQL, EXCEPT returns those tuples that are returned by the first SELECT operation, and not returned by the second SELECT operation.This is the same as using a subtract operator in relational algebra.

--Say we have two relations, Students and TA (Teaching Assistant). We want to return all those students who are not teaching assistants. The query can be formulated as:
	SELECT Name
		   FROM Students
	EXCEPT
	SELECT NAME
		   FROM TA;

--To retain duplicates, we must explicitly write EXCEPTALL instead of EXCEPT.
	SELECT Name
       FROM Students
	EXCEPTALL
	SELECT Name
		   FROM TA;

--Difference between EXCEPT and NOT IN Clause EXCEPT automatically removes all duplicates in the final result, whereas NOT IN retains duplicate tuples. It is also important to note that EXCEPT is not supported by MySQL.



--The INTERSECT clause in SQL is used to combine two SELECT statements but the dataset returned by the INTERSECT statement will be the intersection of the data sets of the two SELECT statements. In simple words, the INTERSECT statement will return only those rows which will be common to both of the SELECT statements.

SELECT John FROM Customer 
INTERSECT
SELECT Bob FROM orderss;