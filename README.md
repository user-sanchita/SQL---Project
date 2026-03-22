# 🎓 Student Performance & Attendance Tracker (SQL Project)

## 📌 Overview

This project is a Database Management System designed to track student performance and attendance across multiple courses. It helps in managing student records, monitoring attendance, and analyzing academic performance efficiently.

---

## 🚀 Features

* Manage student details
* Store course and faculty information
* Track attendance records and percentage
* Record student marks for different exams
* Identify students with low attendance
* Calculate average marks using stored procedures

---

## 🗂️ Database Structure

### 👨‍🎓 Students

Stores student information such as name, roll number, course, semester, and contact details.

### 📚 Courses

Contains course details including course name, faculty name, and credits.

### 📊 Attendance

Tracks student attendance for each course including total classes, attended classes, and attendance percentage.

### 📝 Marks

Stores student marks for different exam types like Midterm and Final.

---

## 🔍 Sample Queries

### 📉 Students with Low Attendance

```sql
SELECT s.name, c.course_name, a.attendance_percentage
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
JOIN Courses c ON a.course_id = c.course_id
WHERE a.attendance_percentage < 75;
```

### 📊 Average Marks of Students

```sql
CALL GetStudentAverageMarks();
```

---

## 🧠 Concepts Used

* SQL DDL (CREATE, ALTER)
* SQL DML (INSERT, SELECT)
* Joins (INNER JOIN)
* Aggregate Functions (AVG)
* Views
* Stored Procedures
* Primary Key & Foreign Key Constraints

---

## 💡 Future Improvements

* Integrate with Java Spring Boot to build RESTful APIs
* Develop backend services for managing students, courses, attendance, and marks
* Implement authentication and authorization using Spring Security & JWT
* Deploy the backend application on cloud platforms like Render

---

## ✨ Conclusion

This project demonstrates a strong foundation in Database Management Systems, including relational schema design, data manipulation, and query optimization. It can be extended into a full backend system using Java technologies.

---
