




            --Table Creation ---


-- 1:::students TABLE ---



---create table ---

CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    student_name  VARCHAR(30),
    age INTEGER,
    email VARCHAR(40),
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
);

--create table data ----
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark)
VALUES 
('Alice', 22, 'alice@example.com', 55, 57),
('Bob', 21, 'bob@example.com', 34, 45),
('Charlie', 23, 'charlie@example.com', 60, 59),
('David', 20, 'david@example.com', 40, 49),
('Eve', 24, 'newemail@example.com', 45, 34),
('Rahim', 23, 'rahim@gmail.com', 46, 42);

SELECT * from students;

--** courses table ***

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255),
    credits INTEGER
);
-- ** create courses table data ***

INSERT into courses (course_name, credits)
VALUES
 ('Next.js', 3),
 ('React.js', 4),
 ('Databases', 3),
 ('Prisma', 3);