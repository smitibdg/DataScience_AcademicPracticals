-- Procedure to Add New Students
create or replace procedure AddStudent (
    p_student_ID in number,
    p_student_Name in varchar,
    p_Email in varchar
) AS
BEGIN
    insert into students (student_ID, student_Name, Email) 
    values (p_student_ID, p_student_Name, p_Email);
END;
/

-- Procedure to Add New Courses
create or replace procedure AddCourse (
    p_course_ID in number,
    p_course_Name in varchar,
    p_course_Credits in number
) AS
BEGIN
    insert into courses (course_ID, course_Name, course_Credits) 
    values (p_course_ID, p_course_Name, p_course_Credits);
END;
/

-- Procedure to Enroll Students
create or replace procedure EnrollStudent (
    p_enrollment_ID in number,
    p_student_ID in number,
    p_course_ID in number
) AS
BEGIN
    insert into enrollments (enrollment_ID, student_ID, course_ID) 
    values (p_enrollment_ID, p_student_ID, p_course_ID);
END;
/

-- Function to List Students in a Course
create or replace function ListStudentsInCourse (
    p_course_ID in number
) RETURN SYS_REFCURSOR AS
    students_cursor SYS_REFCURSOR;
BEGIN
    OPEN students_cursor FOR
        SELECT s.student_ID, s.student_Name, s.Email
        FROM Students s
        JOIN enrollments e ON s.student_ID = e.student_ID
        WHERE e.course_ID = p_course_ID;
    RETURN students_cursor;
END;
/

-- Function to List Courses for a Student
create or replace function ListCoursesForStudent (
    p_student_ID in number
) RETURN SYS_REFCURSOR AS
    courses_cursor SYS_REFCURSOR;
BEGIN
    OPEN courses_cursor FOR
        SELECT c.course_ID, c.course_Name, c.course_Credits
        FROM Courses c
        JOIN enrollments e ON c.course_ID = e.course_ID
        WHERE e.student_ID = p_student_ID;
    RETURN courses_cursor;
END;
/