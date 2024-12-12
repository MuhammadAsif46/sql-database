CREATE DATABASE college;
USE college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student (id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");


CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM course;
SELECT * FROM student;

-- Inner Join:
SELECT * FROM student
INNER JOIN 
course
ON student.id = course.id;

-- Left Join:
SELECT * FROM student
LEFT JOIN 
course
ON student.id = course.id;

-- Right Join:
SELECT * FROM student as s
RIGHT JOIN 
course as c
ON s.id = c.id;

-- Full Join:
SELECT * FROM student as a                      --LEFT JOIN
LEFT JOIN course as b                           --UNION
ON a.id = b.id                                  --RIGHT JOIN
UNION
SELECT * FROM student as a
RIGHT JOIN course as b
ON a.id : = b.id;