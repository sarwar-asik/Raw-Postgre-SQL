DROP DATABASE university_manaagement2;

CREATE DATABASE test1;

ALTER DATABASE test1 RENAME TO test3

##### create table  ::::

CREATE TABLE student (

    student_id INT,

    first_name VARCHAR(40),

    last_name VARCHAR(30),

    cgpa NUMERIC(1,2)

)

##### update table name ::

 ALTER TABLE learners RENAME TO student;

###### Delete a table ::::

DROP TABLE student;

CREATE TABLE
    "user1"(
        user_id SERIAL,
        user_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        age int DEFAULT 18,
    );

##### insert into user1 (1,'abc', 'ab@gmail.com',20)

##### SELECT * from user1;

INSERT INTO
    "user1" (user_id, user_name, email, age)
VALUES (
        2,
        'sarwar',
        'sarwarasik@gamail.com',
        24
    );

INSERT INTO
    user1 (user_name, email)
VALUES (
        'muktadir vai',
        'muktadir@gmail.com'
    ), (
        'mohammad',
        'mahammod@gmail.com'
    );

##### ALTER TABLE user1

##### add COLUMN password VARCHAR(255) DEFAULT 'admin1234' NOT NULL

alter TABLE user1 DROP COLUMN age;

##### SELECT * from user1

##### TRUNCATE TABLE user1

ALTER TABLE user1 add COLUMN demo int;

ALTER TABLE user1 ALTER COLUMN demo TYPE TEXT;

ALTER TABLE user1 alter column country set DEFAULT 'bangladesh';

insert into user1 values (5,'Imdad','imdad@gmail.com');

##### rename a column ADD

ALTER TABLE user1 RENAME COLUMN demo to country;

##### add constrains

ALTER TABLE user1 alter COLUMN country set NOT NULL;

ALTER TABLE user1 add constraint unique_email UNIQUE(email);

##### Employee Table ::::

#####  Employee table under to a department ::::

CREATE TABLE
    Department(
        deptID SERIAL PRIMARY KEY,
        deptName VARCHAR(50)
    );

##### create table data of department:::

INSERT into department VALUES(1,'IT');

DELETE from department  WHERE deptID =1 ;

SELECT * from department;

CREATE TABLE
    Employee(
        empID SERIAL PRIMARY KEY,
        empName VARCHAR(50) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraints_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
    );


##### create employe table data::::
INSERT INTO Employee VALUES(1,'KHorshed',1);


SELECT * from employee;


##### course table ::::


##### create course table::::
CREATE Table courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  published_date DATE

);

#####- create courses table data ::::
INSERT INTO courses(course_name,description, published_date)
  VALUES
  ('frontend developer','A complete frontend developer','2023-07-13'),
  ('backend developer','A complete backend developer',NULL),
  ('complete web developer','A  complete web developer','2023-05-10');


##### update a table data ::::

UPDATE courses 
 set
 description ='be a smart tech learner'
 WHERE course_id > 1 or  course_id  < 5
 ;


##### delete a data ::::

DELETE FROM courses 
WHERE course_id = 4;


CREATE table IF NOT EXISTs department(
    deptID SERIAL PRIMARY KEY,
    name TEXT not NULL
);

INSERT INTO department (deptname)
VALUES
('Marketing'),
('Finance'),
('Sales');

CREATE TABLE if not exists employee(
    empID SERIAL PRIMARY key,
    name text not null,
    email TEXT NOT  NULL,
    salary INTEGER NOT NULL,
    joining_date date not NULL,
    deptID INTEGER not NULL,
    constraint  fk_deptID
       FOREIGN KEY(deptID)
       REFERENCES department(deptID)
);

INSERT INTO employee (name, email, salary, joining_date, deptID)
VALUES
     ('Samuel Harris', 'samuel@example.com', 52000, '2024-02-20', 1),
    ('Grace Turner', 'grace@example.com', 54000, '2024-03-12', 2),
    ('Liam Mitchell', 'liam@example.com', 61000, '2024-04-25', 3),
   
    ('Emma Adams', 'emma@example.com', 49000, '2024-05-30', 1),
    ('Logan Cook', 'logan@example.com', 57000, '2024-06-05', 2),
    ('Chloe Bennett', 'chloe@example.com', 53000, '2024-07-18', 3);




##### smart query from databse ::::::


##### get all data :::
SELECT * from department;

##### get selected data :::::
SELECT name,email,joining_date from employee;

##### condition query::::
SELECT * from employee
WHERE salary > 55000 and salary < 60000 and name <> 'Olivia';
##### WHERE name <> 'Olivia;'


##### ascending order by sorting :::::
SELECT * FROM employee
ORDER BY name
ASC;


#####  #### pagination :"::"
SELECT * FROM employee
ORDER BY name
DESC LIMIT 5 OFFSET 1; 

##### maximum salary sorting ::::

SELECT * FROM employee ORDER BY salary DESC 
LIMIT 1;


##### Get first 3 maximum salary sorting ::::

SELECT * FROM employee ORDER BY salary DESC 
LIMIT 1 OFFSET 2;

##### IN , NOT, BETWEEN, LIKE

##### get without 2,3,5 empid employee(NOT IN)::::

SELECT * from employee 
WHERE empid  NOT IN (2,3,5,10);

##### BETWEEN get salary customize::::

SELECT * from employee
WHERE salary BETWEEN 50000 AND 60000;

##### get data contain 'Ja' LIKE ::::
SELECT * from employee
WHERE name  LIKE '%Ja%';


##### get data started with 'j'(match only first CHARACTER)  LIKE ::::
SELECT * from employee
WHERE name  LIKE 'J%';

##### get data end with 's'(match only last CHARACTER)  LIKE ::::
SELECT * from employee
WHERE name  LIKE '%s';



##### specipic position :::


##### find "m" in 2nd position  ::::
SELECT * from employee
WHERE name  LIKE '_m%';


##### find "m" in 3rd position  ::::
SELECT * from employee
WHERE name  LIKE '__m%';


##### get data started with 'J' and end with 's' LIKE

SELECT * from employee
WHERE name  LIKE 'J%s';

##### get NULL data ::::

SELECT * from employee WHERE deptid IS  NUll;


##### JOINIng Concept :::::

CREATE Table department2(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO department2 (department_id, department_name)
VALUES
    (1, 'Executive'),
    (2, 'HR'),
    (3, 'Sales'),
    (4, 'Development'),
    (5, 'Support'),
    (6, 'Research');

CREATE Table employee2(
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(200),
    department_id INT,
    job_role VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES department2(department_id)
);

INSERT INTO employee2 (employee_id, full_name, department_id, job_role, manager_id)
VALUES
    (1, 'John Doe', 3, 'Sales Manager', NULL),
    (2, 'Jane Smith', 2, 'HR Specialist', 1),
    (3, 'Michael Johnson', 4, 'Software Developer', 1),
    (4, 'Alice Brown', 2, 'HR Assistant', 2),
    (5, 'Robert White', 3, 'Sales Representative', 1),
    (6, 'Emily Williams', 4, 'Software Engineer', 3),
    (7, 'Daniel Lee', 5, 'Technical Support Specialist', 6),
    (8, 'Sophia Martinez', 6, 'Research Scientist', NULL),
    (9, 'David Johnson', 3, 'Sales Representative', 1),
    (10, 'Olivia Brown', 4, 'Software Developer', 3),
    (11, 'James Smith', 5, 'Technical Support Specialist', 6),
    (12, 'Ella Garcia', 2, 'HR Specialist', 2),
    (13, 'Matthew Davis', 4, 'Software Engineer', 3),
    (14, 'Ava Wilson', 6, 'Research Scientist', NULL),
    (15, 'Liam Mitchell', 3, 'Sales Representative', 5);




SELECT * from department2;

SELECT * from employee2;

##### start joining concept ::::

SELECT employee2.full_name,employee2.job_role,employee2.manager_id,department2.department_name
FROM employee2
INNER JOIN department2  ON  department2.department_id = employee2.department_id ;


##### left join ::::

SELECT *
FROM employee2
LEFT JOIN department2  ON  department2.department_id = employee2.department_id ;


##### RIGHT join ::::

SELECT *
FROM employee2
RIGHT JOIN department2  ON  department2.department_id = employee2.department_id ;



##### FULL join ::::

SELECT *
FROM employee2
FULL JOIN department2  ON  department2.department_id = employee2.department_id ;


##### Natural JOIN ::::

SELECT *
from employee
NATURAL JOIN department2;


##### CROSS JOIN ::::

SELECT *
from employee
CROSS JOIN department2;
##### #####-  noted #####



##### AGGREGATE Function ::::

SELECT * from employee;

##### get average salary :::
SELECT AVG(salary) as AverageSalary from employee;

##### get MAX salary :::
SELECT MAX(salary) as MaximumSalary from employee;


##### get SUM salary :::
SELECT SUM(salary) as TotalSalary from employee;

##### group avarage data ;
SELECT deptid, AVG(salary) from employee GROUP BY deptid;


##### Aggregate with joining ::::

SELECT d.deptname, avg(e.salary),sum(e.salary) as TOtalSalary,max(e.salary),min(e.salary),count(*) from employee e
FULL JOIN department d on e.deptid = d.deptid
GROUP BY d.deptname         ;


SELECT d ,sum(salary),count(*) from department d
 FULL JOIN employee e on e.deptid = d.deptid
 GROUP BY d.deptid HAVING sum(e.salary) > 40000

