CREATE DATABASE tech;
USE tech;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES 
(1, "ADAM", 25000),
(2, "BOB", 30000);

SELECT * FROM employee;

INSERT INTO employee VALUES (3, "CASEY", 40000);

SELECT * FROM employee;