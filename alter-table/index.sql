USE college;

SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
Drop COLUMN age ;

ALTER TABLE student
RENAME TO students;

SELECT * FROM students;

-- ADD Column
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY Column
ALTER TABLE student
MODIFY age VARCHAR(2);


-- CHANGE Column (rename)
ALTER TABLE student
CHANGE age stu_age INT;

-- DROP Column
ALTER TABLE student
DROP COLUMN stu_age;

-- RENAME Table
ALTER TABLE students
RENAME TO student;