------ SQL SUB QUERIES ---------
1. Example:

-- Get Names of all students who scored more than class average.

-> Find the average of class
-> Find the names of students with marks > avg; 


-- Get Table:
SELECT * FROM student;

-- SEPRATE QUERY:
SELECT AVG(marks) FROM student;
SELECT name, marks FROM student
WHERE marks > 87.667;


-- JOIN BOTH QUERY:
SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);



2. Example:

-- Find the name s of all students with even roll numbers.
-> Find the even roll numbers
-> Find the name of students with even roll no.


-- Get Table:
SELECT * FROM student;

-- SEPRATE QUERY:
SELECT roll_no FROM student
WHERE roll_no % 2 = 0;

-- JOIN BOTH Query:
SELECT name,roll_no FROM student
WHERE roll_no IN
(SELECT roll_no FROM student WHERE roll_no % 2 = 0) ;



3. Example:

-- Example with FROM:
-> Find the max marks from the students of Karachi.
-> Find the students of "Karachi",
-> Find their max mard using the sublisting step 1           .


-- Get Table:
SELECT * FROM student;

-- SEPRATE QUERY:
SELECT * FROM student
WHERE city = "Karachi";

-- JOIN BOTH Query:
SELECT MAX(marks) 
FROM (SELECT * FROM student WHERE city = "Dehli") As temp ;



