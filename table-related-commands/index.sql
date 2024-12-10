-- Table related Queries


CREATE DATABASE college;
USE college;

CREATE TABLE student(
    rollNo INT PRIMARY KEY, 
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
(rollNo, name, marks, grade, city) 
VALUES 
(101,"ali",92,"A","Karachi"),
(102,"raza",87,"B","Lahore"),
(103,"farhan",78,"C","Karachi"),
(104,"khan",95,"A","Multan"),
(105,"abc",97,"A","Karachi"),
(106,"xyz",81,"B","Lahore");

SELECT * FROM student;

SELECT city, count(name) FROM student GROUP BY city ;

-- before update set your mode
SET SQL_SAFE_UPDATES = 0;   -- 0 value is safe mode on
-- SET SQL_SAFE_UPDATES = 1; -- 1 value is safe mode of

UPDATE student
SET grade = "0"
WHERE grade = "A";

SELECT * FROM student;

UPDATE student 
SET marks = 84 
WHERE rollNo = 101;