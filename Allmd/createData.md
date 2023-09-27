##### CREATE DATABASE ::::
```sql 
CREATE DATABASE test1;

```



### create table  ::::

```sql
CREATE TABLE student (

    student_id INT,

    first_name VARCHAR(40),

    last_name VARCHAR(30),

    cgpa NUMERIC(1,2)

)


CREATE TABLE
    "user1"(
        user_id SERIAL,
        user_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        age int DEFAULT 18,
    );


```
#### create table data

 ```sql
     insert into user1 (1,'abc', 'ab@gmail.com',20)

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


    CREATE TABLE
        Department(
            deptID SERIAL PRIMARY KEY,
            deptName VARCHAR(50)
        );
 ```

-- create table data of department:::

```sql

INSERT into department VALUES(1,'IT');



    CREATE TABLE
        Employee(
            empID SERIAL PRIMARY KEY,
            empName VARCHAR(50) NOT NULL,
            departmentID INT,
            CONSTRAINT fk_constraints_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
        );


INSERT INTO Employee VALUES(1,'KHorshed',1);



    CREATE Table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE

    );

```
###### create courses table data ::::
```sql

    INSERT INTO courses(course_name,description, published_date)
    VALUES
    ('frontend developer','A complete frontend developer','2023-07-13'),
    ('backend developer','A complete backend developer',NULL),
    ('complete web developer','A  complete web developer','2023-05-10');



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




```

### JOINIng :::::

```sql
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
```