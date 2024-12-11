-- Rivising FK:

CREATE TABLE dept(
    id INT PRIMARY KEY, 
    name VARCHAR(50),
);

CREATE TABLE student(
    id INT PRIMARY KEY, 
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);


-- Cascading for FK:

USE college;

CREATE TABLE dept(
    id INT PRIMARY KEY, 
    name VARCHAR(50)
);

SELECT * FROM dept;

INSERT INTO dept 
VALUES 
(101,"English"),
(102,"IT");

UPDATE dept
SET id = 104
WHERE name = "IT";

CREATE TABLE teacher(
    id INT PRIMARY KEY, 
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher 
VALUES 
(201,"ali", 101),
(202,"raza", 102);

SELECT * FROM teacher;
