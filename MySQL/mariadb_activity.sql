-- Part 5: Create a Database
CREATE DATABASE school;
SHOW DATABASES;
USE school;

-- Part 6: Create a Table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    year_level INT
);
SHOW TABLES;
DESCRIBE students;

-- Part 7: Insert Records
INSERT INTO students (name, course, year_level)
VALUES
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3);

-- Part 8: Display the Records
SELECT * FROM students;

-- Part 9: Filter the Records
SELECT * FROM students WHERE course = 'BSIT';
SELECT * FROM students WHERE year_level >= 2;

-- Part 10: Add Another Student (Replace [YOUR NAME])
INSERT INTO students (name, course, year_level)
VALUES ('Dawn Barsatan', 'BSIT', 3);
SELECT * FROM students;

-- Part 11: Update a Record
UPDATE students
SET year_level = 2
WHERE name = 'Juan Dela Cruz';
SELECT * FROM students;

-- Part 12: Delete a Record
DELETE FROM students
WHERE name = 'Pedro Reyes';
SELECT * FROM students;

-- Challenge Activity: Create Courses Table
CREATE TABLE courses (
    course_id VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);

-- Challenge Activity: Insert Custom Courses
INSERT INTO courses (course_id, course_name, description, units)
VALUES
('CC16', 'IT Security', 'Foundational concepts and key terminologies in IT Security', 3),
('CC18', 'Social and Professional Issues', 'Ethical and social laws and policies in IT', 3),
('CIT4', 'Intro to Integrative Programming', 'Fundamentals in programming, electronics, circuits and hardware', 3);

SELECT * FROM courses;