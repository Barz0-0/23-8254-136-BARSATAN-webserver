USE school; --

-- Part V. Create the Enrollments Table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id VARCHAR(20),
    enrollment_date DATE
); --[cite: 13]

-- Part VI. Add Foreign Keys
ALTER TABLE enrollments
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id)
REFERENCES students (id);

ALTER TABLE enrollments
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES courses (course_id);

-- Part VIII. Insert Enrollment Records (Updated as requested)
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 'CC16', '2026-10-07'),
(1, 'CC18', '2026-10-07'),
(1, 'CIT4', '2026-10-07'),
(2, 'CC16', '2026-10-07'),
(2, 'CC18', '2026-10-07'),
(2, 'CIT4', '2026-10-07'),
(3, 'CIT4', '2026-10-07');

-- Part IX. Basic JOIN
SELECT students.name, courses.course_name, enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id;

-- Part X. Filter Using WHERE
SELECT students.name, courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'IT Security';

-- Part XI. Sort the Results
SELECT students.name, courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id
ORDER BY students.name ASC;

-- Part XII. Count the Number of Students
SELECT COUNT(*) AS total_students
FROM students;

-- Part XIII. Count Student Enrollments
SELECT COUNT(*) AS total_enrollments
FROM enrollments;

-- Part XIV. Count Students per Course
SELECT courses.course_name, COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

-- Part XV. Find the Most Popular Course
SELECT courses.course_name, COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY number_of_students DESC;

-- Part XVI. Create a Student Report
SELECT students.id AS student_id, students.name AS student_name, courses.course_name, enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id
ORDER BY students.name;

-- Part XVII. Challenge Task: Add at least 5 students, 5 courses, and 10 enrollments

-- 1. Add 2 more students (Total = 5 students)
INSERT INTO students (name, course, year_level)
VALUES 
('Ana Reyes', 'BSIT', 2),
('Carlos Batumbakal', 'BSCS', 1);

-- 2. Add 2 more courses (Total = 5 courses)
INSERT INTO courses (course_id, course_name, description, units)
VALUES 
('CC6', 'Emerging Technologies', 'Introduces prominent emerging and disruptive technologies in IT', 3),
('CC17', 'Mobile Application Design and Development', 'Mobile application development for the Android platform', 3);

-- 3. Add 4 more enrollments (7 initial + 4 new = 11 total enrollments, satisfying >= 10 requirement)
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(4, 'CC6', '2026-10-08'),
(4, 'CC17', '2026-10-08'),
(5, 'CC6', '2026-10-08'),
(5, 'CC17', '2026-10-08');

-- Part XVIII. Challenge Queries

-- Task 1: Display all students enrolled in a particular course
SELECT students.name, courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id
WHERE courses.course_id = 'CC16';

-- Task 2: Display all courses taken by a particular student
SELECT courses.course_name, students.name
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.course_id
WHERE students.name = 'Juan Dela Cruz';

-- Task 3: Count the number of students enrolled in each course
SELECT courses.course_name, COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

-- Task 4: Display the course with the highest number of students
SELECT courses.course_name, COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY number_of_students DESC
LIMIT 1;

-- Task 5: Display students alphabetically
SELECT * FROM students 
ORDER BY name ASC;

-- Task 6: Display the total number of enrollments
SELECT COUNT(*) AS total_enrollments 
FROM enrollments;