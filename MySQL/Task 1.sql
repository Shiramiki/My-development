CREATE DATABASE university;
USE university;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    gpa DECIMAL(3,2),
    scholarship ENUM('Yes', 'No')
);

INSERT INTO students (student_id, name, age, department, gpa, scholarship) VALUES
(1, 'John Doe', 22, 'Computer Science', 3.8, 'Yes'),
(2, 'Jane Smith', 21, 'Business', 3.2, 'No'),
(3, 'Alice Brown', 23, 'Engineering', 2.9, 'Yes'),
(4, 'Bob Johnson', 20, 'Computer Science', 3.5, 'No'),
(5, 'Charlie Davis', 24, 'Business', 3.1, 'Yes'),
(6, 'Emma Wilson', 22, 'Engineering', 3.7, 'No');

SELECT * FROM students;

SELECT * FROM students WHERE department = "Computer Science" AND gpa = 3.5;

SELECT * FROM students WHERE department = "Engineering" OR gpa < 3.0;
SELECT* FROM students WHERE NOT scholarship = "yes";
-- SELECT * FROM students WHERE NOT scholarship = "Yes";


SELECT * from students WHERE (gpa > 3.0 AND NOT department = "Business") OR department = "Engineering";

Select * from students WHERE(department = "Computer Science" AND gpa >3.0) OR (department = "Engineering" AND age < 22);

SELECT * FROM students WHERE NOT (gpa<3.0 OR department = "Engineering");

SELECT * FROM students WHERE NOT (department ="Business" OR gpa>3.5);
-- SELECT * FROM students WHERE NOT (age > 23) AND gpa > 3.0;

SELECT * FROM students WHERE NOT age >23 AND gpa > 3.0;

-- Grade: 7/8