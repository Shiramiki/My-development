SHOW DATABASES;
SELECT SCHEMA_NAME
    FROM information_schema.SCHEMATA
    WHERE SCHEMA_NAME = "syts";

SELECT SCHEMA_NAME
    FROM information_schema.SCHEMATA
    WHERE SCHEMA_NAME = "sys";

SELECT DATABASE();

USE Sys;

SELECT DATABASE();

CREATE DATABASE IF NOT EXISTS school_db;

USE school_db;

SELECT DATABASE();

CREATE TABLE  students(
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Teachers(
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    department VARCHAR(100)
);

CREAte TABLE IF NOT EXISTS enrollments(
    student_id INT,
    course_id iNT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
)

SHOW TABLES;

DESC students;

DESCRIBE enrollments;

SELECT DATABASE();
USE school_db;

SHOW COLUMNS FROM students;

ALTER TABLE teachers DROP age;

DESC teachers;

ALTER TABLE students 
    ADD COLUMN DOB DATE,
    ADD COLUMN Address VARCHAR(100);

DESC students;

ALTER TABLE students
    ADD COLUMN RegNo VARCHAR(10) FIRST;

DESC teachers;
ALTER TABLE teachers
    ADD COLUMN Address VARCHAR(100)
    AFTER email;

ALTER TAble Teachers
    ADD COLUMN gender VARCHAR(1)
    AFTER name,
    ADD COLUMN Salary DECIMAL(10,2);

ALTER TABLE teachers
    add COLUMN phoneNo VARCHAR(15)
    After email;

DESC Teachers;

ALTER TABLE teachers
    CHANGE phoneNo Phone_Number VARCHAR(10);


ALTER TABLE students
    RENAME COLUMN Address
    To Addr;

DESC Students;

RENAME TABLE enrollments 
    To enrolled;

SHOW TABLES;

DESC TEachers;

AlTER TABLE teachers MODIFY gender VARCHAR(10);

INSERT INTO teachers (teacher_id, name, gender, email, phone_number, address, department, salary)
VALUES
  (1, 'John Doe', 'Male', 'johndoe@example.com', '1234567890', '123 Elm Street', 'Mathematics', 50000.00),
  (2, 'Jane Smith', 'Female', 'janesmith@example.com', '0987654321', '456 Oak Avenue', 'Science', 55000.00),
  (3, 'Sam Brown', 'Male', 'sambrown@example.com', '1122334455', '789 Pine Road', 'History', 48000.00),
  (4, 'Emily White', 'Female', 'emilywhite@example.com', '6677889900', '321 Birch Boulevard', 'English', 52000.00),
  (5, 'Michael Green', 'Male', 'michaelgreen@example.com', '2233445566', '654 Maple Lane', 'Computer Science', 60000.00),
  (6, 'Sarah Black', 'Female', 'sarahblack@example.com', '3344556677', '987 Cedar Street', 'Physics', 57000.00),
  (7, 'David Blue', 'Male', 'davidblue@example.com', '4455667788', '159 Willow Drive', 'Chemistry', 54000.00),
  (8, 'Laura Pink', 'Female', 'laurapink@example.com', '5566778899', '852 Redwood Way', 'Biology', 53000.00),
  (9, 'Chris Yellow', 'Male', 'chrisyellow@example.com', '6677889900', '963 Spruce Court', 'Philosophy', 51000.00),
  (10, 'Olivia Purple', 'Female', 'oliviapurple@example.com', '7788990011', '147 Pinewood Terrace', 'Sociology', 55000.00);

desc students;

INSERT INTO students (regno, student_id, name, age, email, dob, addr)
VALUES
  ('S1001', 1, 'John Doe', 20, 'johndoe@example.com', '2003-01-15', '123 Elm Street'),
  ('S1002', 2, 'Jane Smith', 22, 'janesmith@example.com', '2001-04-20', '456 Oak Avenue'),
  ('S1003', 3, 'Sam Brown', 21, 'sambrown@example.com', '2002-03-10', '789 Pine Road'),
  ('S1004', 4, 'Emily White', 23, 'emilywhite@example.com', '2000-09-05', '321 Birch Boulevard'),
  ('S1005', 5, 'Michael Green', 24, 'michaelgreen@example.com', '1999-12-25', '654 Maple Lane'),
  ('S1006', 6, 'Sarah Black', 22, 'sarahblack@example.com', '2001-06-17', '987 Cedar Street'),
  ('S1007', 7, 'David Blue', 21, 'davidblue@example.com', '2002-11-30', '159 Willow Drive'),
  ('S1008', 8, 'Laura Pink', 23, 'laurapink@example.com', '2000-02-14', '852 Redwood Way'),
  ('S1009', 9, 'Chris Yellow', 20, 'chrisyellow@example.com', '2003-08-02', '963 Spruce Court'),
  ('S1010', 10, 'Olivia Purple', 21, 'oliviapurple@example.com', '2002-05-18', '147 Pinewood Terrace');

desc enrolled;

INSERT INTO enrolled (student_id, course_id, enrollment_date)
VALUES
  (1, 101, '2023-09-01'),
  (2, 102, '2023-09-10'),
  (3, 103, '2023-09-12'),
  (4, 101, '2023-09-15'),
  (5, 104, '2023-09-20'),
  (6, 105, '2023-09-22'),
  (7, 102, '2023-09-25'),
  (8, 103, '2023-09-28'),
  (9, 104, '2023-10-02'),
  (10, 105, '2023-10-05');

SELECT student_id, COUNT(*)
    FROM students
    GROUP BY student_id
    HAVING COUNT(*)>1;

SELECT * FROm Teachers;

SElECt * FROM Students;
 SELECT * FROM Enrolled;

CREATE DATABASE Joins;
use Joins;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
INSERT INTO employees (emp_id, name, department_id)
VALUES 
    (1, 'Alice', 101),
    (2, 'Bob', 102),
    (3, 'Charlie', NULL),
    (4, 'David', 101);
INSERT INTO departments (department_id, department_name)
VALUES
    (101, 'HR'),
    (102, 'IT'),
    (103, 'Finance');


SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments 
ON employees.department_id = departments.department_id;
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;
SELECT employees.name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id
UNION
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;


