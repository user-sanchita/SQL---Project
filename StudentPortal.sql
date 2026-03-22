create database StudentPerformanceandAttendanceTracker;
use  StudentPerformanceandAttendanceTracker;

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    roll_no VARCHAR(20) UNIQUE,
    course VARCHAR(50),
    semester INT,
    contact_no VARCHAR(15)
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_name VARCHAR(100),
    credits INT
);

CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    total_classes INT,
    attended_classes INT,
    attendance_percentage DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    exam_type VARCHAR(20),
    marks_obtained INT,
    max_marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
-- Insert a student
INSERT INTO Students (name, roll_no, course, semester, contact_no) VALUES
 ('Sanchita Koley', 'CSE202501', 'CSE', 5, '9876543210'),
 ('Alok Raj', 'CSE202502', 'CSE', 5, '9876543211'),
 ('Dipti Koley', 'CSE202505', 'CSE', 5, '9876543210'),
 ('Monami Mukharjee', 'CSE2025019', 'CSE', 5, '9876548210');


INSERT INTO Courses (course_name, faculty_name, credits) VALUES 
('Database Management System', 'Dr. A. Banerjee', 4),
('Operating System', 'Dr. S. Sen', 3),
('Computer Network', 'Dr. Sanjay Sen', 4),
('Compiler Design', 'Dr. Sudesh Mitra', 3);


SELECT * FROM Students;
SELECT * FROM Courses;

INSERT INTO Attendance (student_id, course_id, total_classes, attended_classes, attendance_percentage) VALUES 
(1, 1, 30, 27, (27/30.0)*100),
(3, 2, 25, 20, (20/25.0)*100),
(5, 3, 30, 27, (27/30.0)*100),
(6, 4, 40, 20, (20/40.0)*100);

INSERT INTO Marks (student_id, course_id, exam_type, marks_obtained, max_marks) VALUES 
(1, 1, 'Midterm', 45, 50),
(3, 2, 'Final', 70, 100),
(5, 3, 'Midterm', 45, 50),
(6, 4, 'Midterm', 47, 50);


SELECT s.name, c.course_name, a.attendance_percentage
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
JOIN Courses c ON a.course_id = c.course_id
WHERE a.attendance_percentage < 75;

SELECT s.name, AVG(m.marks_obtained) AS avg_marks
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
GROUP BY s.student_id;


