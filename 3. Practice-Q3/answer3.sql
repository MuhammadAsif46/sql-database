CREATE DATABASE payment_method;
USE payment_method;

CREATE TABLE customer(
customer_id INT PRIMARY KEY, 
customer_name VARCHAR(50),
payment_mode VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customer 
(customer_id,customer_name,payment_mode,city) 
VALUES 
(101,"ali","Netbanking","Portland"),
(102,"raza","Credit Card","Miami"),
(103,"farhan","Credit Card","Seattle"),
(104,"khan","Netbanking","Denver"),
(105,"abc","Netbanking","New Orleans"),
(106,"xyz","Debit Card","Minneapolis"),
(107,"hello","Debit Card","Phoenix"),
(108,"world","Netbanking","Boston"),
(109,"user","Netbanking","Nashvile"),
(110,"data","Credit Card","Boston");

SELECT * FROM customer;

SELECT payment_mode, count(customer_id) FROM customer GROUP BY payment_mode ;