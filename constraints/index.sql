CREATE TABLE temp1 (
    id INT UNIQUE
);

INSERT INTO temp1 VALUES (101); --insert column
INSERT INTO temp1 VALUES (101); -- duplicate error


SELECT * FROM temp1


CREATE TABLE temp2 (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id , name) -- unique combination of name and age
);


-- FOREIGN KEY EXAMPLE --

CREATE TABLE temp3 (
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(id) -- references means left side column refer to right side column.
);

-- Default constraint:

CREATE TABLE emp (
    id INT,
    salary INT DEFAULT 30000
);

INSERT INTO emp (id) VALUES (101);

SELECT * FROM emp;


-- CHECK constraint:

CREATE TABLE student (
    id INT,
    city VARCHAR(50),
    age INT, -- age INT CHECK (age >= 18)
    CONSTRAINT age_check CHECK (age >= 18 AND city = "karachi")
    -- CHECK (age BETWEEN 18 AND 30) -- age must be between 18 and 30
);

