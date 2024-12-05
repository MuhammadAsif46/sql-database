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
