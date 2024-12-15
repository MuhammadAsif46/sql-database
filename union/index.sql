-------- UNION --------

-- get uniques name
SELECT name FROM employee
UNION
SELECT name FROM employee


-- get all name
SELECT name FROM employee
UNION ALL
SELECT name FROM employee