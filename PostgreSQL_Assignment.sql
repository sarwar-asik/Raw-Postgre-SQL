--Table Creation ---

--! 1:::students TABLE ---

---create table ---

CREATE Table
    students(
        student_id SERIAL PRIMARY KEY,
        student_name VARCHAR(30),
        age INTEGER,
        email VARCHAR(40),
        frontend_mark INTEGER,
        backend_mark INTEGER,
        status VARCHAR(50)
    );



--! 2:::courses TABLE ---

CREATE TABLE
    courses (
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(255),
        credits INTEGER
    );

-- ** create courses table data ***

INSERT into
    courses (course_name, credits)
VALUES ('Next.js', 3), ('React.js', 4), ('Databases', 3), ('Prisma', 3);

SELECT * from courses;

-- ! 3:::enrollment TABLE ---

CREATE TABLE
    enrollment (
        enrollment_id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students(student_id),
        course_id INTEGER REFERENCES courses(course_id)
    );

--- ** enrollment data insert **--

INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1), (1, 2), (2, 1), (3, 2);

SELECT * from enrollment;

--!  *** Execute SQL queries -----


--***Query 1 >>>>>>>>>>: 

INSERT INTO
    students (student_name,age,email,frontend_mark,backend_mark)
VALUES 
('Bob',21,'bob@example.com',34,45),
('Charlie',23,'charlie@example.com',60,59),
('David',20,'david@example.com',40,49),
('Eve',24,'newemail@example.com',45,34),
('Rahim',23,'rahim@gmail.com',46,42);


SELECT * from students;

--***Query 2 >>>>>>>>>>: 


SELECT stu.student_name, co.course_name from students stu
JOIN enrollment enroll on stu.student_id = enroll.student_id
join courses co on co.course_id = enroll.course_id
where co.course_name = 'Next.js';



--***Query 3 >>>>>>>>>>: 




update students 
set status = 'Awarded'
WHERE (frontend_mark+backend_mark)=(
    SELECT max (frontend_mark+ backend_mark)
   from students
);


SELECT * from enrollment;

SELECT * from courses;

--***Query 4 >>>>>>>>>>: 
-- Delete all courses that have no students enrolled.

DELETE from courses
WHERE courses.course_id not in (
    SELECT enrollment.course_id
    from enrollment
);