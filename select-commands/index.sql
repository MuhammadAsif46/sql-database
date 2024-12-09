-- Select table column wise: 
SELECT col1, col2 FROM table_name;

-- Select all table data:
SELECT * FROM table_name;

-- Duplicate values ignore:
SELECT DISTINCT city FROM student;


-- WHERE Clause:

SELECT col1, col2 FROM table_name WHERE conditions;

SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE city = "Karachi";

SELECT * FROM student WHERE marks > 80 AND city = "Karachi";

SELECT * FROM student WHERE marks+20 > 90;

SELECT * FROM student WHERE marks = 90;

-- AND Operator:

SELECT * FROM student WHERE marks > 80 AND city = "Karachi" AND gender = "Male";

-- OR Operator:

SELECT * FROM student WHERE marks > 80 OR city = "Karachi";

-- NOT Operator:

SELECT * FROM student WHERE NOT city = "Karachi";

-- Between Operator:

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

-- LIKE Operator:

SELECT * FROM student WHERE name LIKE "A%";

-- In Operator:

SELECT * FROM student WHERE city IN ("Karachi", "Lahore", "Islamabad");

-- NOT IN Operator:

SELECT * FROM student WHERE city NOT IN ("Karachi", "Lahore", "Islamabad");

-- LIMIT Clause:

SELECT * FROM student LIMIT 5;
SELECT * FROM student WHERE marks > 70 LIMIT 3;

-- ORDER BY Clause:

SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
SELECT * FROM student ORDER BY city ASC;


-- GROUP BY Clause:

SELECT city, COUNT(name) FROM student GROUP BY city;
SELECT city, COUNT(name) AS total_students FROM student GROUP BY city;


