-- Practise sql 

CREATE TABLE STUDENT_ID (
    STUDENT_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GPA DECIMAL(4,2),
    ENROLLMENT_DATE DATETIME,
    MAJOR VARCHAR(50)
);

INSERT INTO STUDENT_ID (STUDENT_ID, FIRST_NAME, LAST_NAME, GPA, ENROLLMENT_DATE, MAJOR)
VALUES
    (201, 'Shivansh', 'Mahajan', 8.79, '2021-09-01 09:30:00', 'Computer Science'),
    (202, 'Umesh', 'Sharma', 8.44, '2021-09-01 08:30:00', 'Mathematics'),
    (203, 'Rakesh', 'Kumar', 5.60, '2021-09-01 10:00:00', 'Biology'),
    (204, 'Radha', 'Sharma', 9.20, '2021-09-01 12:45:00', 'Chemistry'),
    (205, 'Kush', 'Kumar', 7.85, '2021-09-01 08:30:00', 'Physics'),
    (206, 'Prem', 'Chopra', 9.56, '2021-09-01 09:24:00', 'History'),
    (207, 'Pankaj', 'Vats', 9.78, '2021-09-01 02:30:00', 'English'),
    (208, 'Navleen', 'Kaur', 7.00, '2021-09-01 06:30:00', 'Mathematics');


CREATE TABLE PROGRAM (
    STUDENT_REF_ID INT PRIMARY KEY,
    PROGRAM_NAME VARCHAR(50),
    PROGRAM_START_DATE DATETIME
);

INSERT INTO PROGRAM (STUDENT_REF_ID, PROGRAM_NAME, PROGRAM_START_DATE)
VALUES
    (201, 'Computer Science', '2021-09-01 00:00:00'),
    (202, 'Mathematics', '2021-09-01 00:00:00'),
    (208, 'Mathematics', '2021-09-01 00:00:00'),
    (205, 'Physics', '2021-09-01 00:00:00'),
    (204, 'Chemistry', '2021-09-01 00:00:00'),
    (207, 'Psychology', '2021-09-01 00:00:00'),
    (206, 'History', '2021-09-01 00:00:00'),
    (203, 'Biology', '2021-09-01 00:00:00');


CREATE TABLE SCHOLARSHIP (
    STUDENT_REF_ID INT,
    SCHOLARSHIP_AMOUNT DECIMAL(10,2),
    SCHOLARSHIP_DATE DATETIME,
    FOREIGN KEY (STUDENT_REF_ID) REFERENCES STUDENT_ID(STUDENT_ID)
);

INSERT INTO SCHOLARSHIP (STUDENT_REF_ID, SCHOLARSHIP_AMOUNT, SCHOLARSHIP_DATE)
VALUES
    (201, 5000, '2021-10-15 00:00:00'),
    (202, 4500, '2022-08-18 00:00:00'),
    (203, 3000, '2022-01-25 00:00:00'),
    (201, 4000, '2021-10-15 00:00:00');


-- 1. Write a SQL query to fetch “FIRST_NAME” from the Student table in upper case and use ALIAS name as STUDENT_NAME.

SELECT upper(FIRST_NAME) as STUDENT_NAME from Student;

-- 2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.


-- 3.  Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.


-- 4. Write a SQL query to find the position of alphabet (‘a’) int the first name column ‘Shivansh’ from Student table.


-- 5.Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.


-- 6. Write a SQL query to print FIRST_NAME from the Student table after replacing ‘a’ with ‘A’.


-- 7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.


-- 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .


--9. Write a SQL query to print details of the Students with the FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.


--10. Write a SQL query to print details of the Students excluding FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.


--11. Write a SQL query to print details of the Students whose FIRST_NAME ends with ‘a’.


--12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains six alphabets.


--13. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.


--14. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.


--15. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.

--16. Write an SQL query to fetch the no. of Students for each MAJOR subject in the descending order.

--17. Display the details of students who have received scholarships, including their names, scholarship amounts, and scholarship dates.


--18. Write an SQL query to show only odd rows from Student table.


--19. Write an SQL query to show only even rows from Student table.


--20. List all students and their scholarship amounts if they have received any. If a student has not received a scholarship, display NULL for the scholarship details.


--21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.



--22. Write an SQL query to determine the nth (say n=5) highest GPA from a table.


--23. Write an SQL query to determine the 5th highest GPA without using LIMIT keyword.


--24. Write an SQL query to fetch the list of Students with the same GPA.

--25. Write an SQL query to show the second highest GPA from a Student table using sub-query.


