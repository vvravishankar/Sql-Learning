-- The EXISTS condition in SQL is used to check whether the result of a correlated nested query is empty (contains no tuples) or not. The result of EXISTS is a boolean value True or False. It can be used in a SELECT, UPDATE, INSERT or DELETE statement.

--Using EXISTS condition with SELECT statement To fetch the first and last name of the customers who placed atleast one order.

	SELECT fname, lname 
	FROM Customers 
	WHERE EXISTS (SELECT * 
				  FROM Orders 
				  WHERE Customers.customer_id = Orders.c_id);
				  

-- Using NOT with EXISTS Fetch last and first name of the customers who has not placed any order.

	SELECT lname, fname
	FROM Customers
	WHERE NOT EXISTS (SELECT * 
					  FROM Orders 
					  WHERE Customers.customer_id = Orders.c_id);
					  
--Using EXISTS condition with DELETE statement Delete the record of all the customer from Order Table whose last name is ‘Mehra’.

	DELETE 
	FROM Orders
	WHERE EXISTS (SELECT *
				  FROM customers
				  WHERE Customers.customer_id = Orders.c_id
				  AND Customers.lname = 'Mehra');

--Using EXISTS condition with UPDATE statement Update the lname as ‘Kumari’ of customer in Customer Table whose customer_id is 401.
	UPDATE Customers
	SET lname = 'Kumari'
	WHERE EXISTS (SELECT *
				  FROM Customers
				  WHERE customer_id = 401);