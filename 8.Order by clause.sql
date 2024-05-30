--SQL ORDER BY clause sorts the result of the SELECT statement either in ascending or descending order.

--The ORDER BY statement in SQL is used to sort the fetched data in either ascending or descending according to one or more columns. It is very useful to present data in a structured manner.SQL ORDER BY default mode is sorting data into ascending order. To sort data in descending order use the DESC keyword with ORDER BY clause.


CREATE TABLE students (
  roll_no INT NOT NULL,
  age INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  PRIMARY KEY (roll_no)
);
INSERT INTO students (roll_no, age, name, address, phone)
VALUES 
  (1, 18, 'Shubham Thakur', '123 Main St, Mumbai', '9876543210'),
  (2, 19, 'Aman Chopra', '456 Park Ave, Delhi', '9876543211'),
  (3, 20, 'Naveen Tulasi', '789 Broadway, Ahmedabad', '9876543212'),
  (4, 21, 'Aditya arpan', '246 5th Ave, Kolkata', '9876543213'),
  (5, 22, 'Nishant Jain', '369 3rd St, Bengaluru', '9876543214')



-- Sort According To a Single Column using ORDER BY Clause Example

	SELECT * FROM students ORDER BY ROLL_NO DESC;

-- Sort According To Multiple Columns using ORDER BY Clause Example

	SELECT * FROM students ORDER BY age DESC , name ASC;

--Sorting By Column Number (instead of name)

	SELECT Name, Address FROM studentinfo ORDER BY 1
--ORDER BY 1 means sorting values according to first column in the SELECT statement

