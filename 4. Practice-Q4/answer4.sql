USE college;

SELECT * FROM student;

ALTER TABLE student
CHANGE name full_name varchar(50);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;