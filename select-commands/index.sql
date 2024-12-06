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
