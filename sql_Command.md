### Database command >>>>

### create a database ::::::::

CREATE DATABASE test1;

        CREATE DATABASE test1;

### drop database :::::

DROP DATABASE university_manaagement2;

            DROP DATABASE university_manaagement2;

#### Rename Database :::::

ALTER DATABASE test1 RENAME TO test3

                ALTER DATABASE test1 RENAME TO test3


#### Create a table about student ::::::


**create_student**
CREATE TABLE student (
    student_id INT,
    first_name VARCHAR(40),
    last_name VARCHAR(30),
    cgpa NUMERIC(1,2)
)

**create student1**
CREATE TABLE "user"(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
  
)

**create student1 with primary key and unique_name**

CREATE TABLE "user1"(
    user_id SERIAL,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age int DEFAULT 18,
    PRIMARY KEY(user_id, user_name),
    UNIQUE(user_name, email)
)


### rename a table name ::::::

 ALTER TABLE student RENAME TO learners;


### Delete a table ::::

**drop whole table**

            DROP TABLE student;

**drop only table value**

                TRUNCATE TABLE user1

              


### create table data :::::

**sytem1**
INSERT INTO "user1" (user_id, user_name,email,age) VALUES (2, 'sarwar', 'sarwarasik@gamail.com', 24);


**system2**

INSERT INTO user1 (user_name,email) 
VALUES
('muktadir vai', 'muktadir@gmail.com'),
('mohammad','mahammod@gmail.com')

 
##### get table all  data :::::

SELECT * from user1             

        SELECT * from user1


#### insert a column in a table :::
ALTER TABLE user1 
add COLUMN password VARCHAR(255) DEFAULT 'admin1234' NOT NULL


        ALTER TABLE user1 
        add COLUMN password VARCHAR(255) DEFAULT 'admin1234' NOT NULL


### remove a column ::
alter TABLE user1
DROP COLUMN age

            
            alter TABLE user1
            DROP COLUMN age



**change data type of table**

ALTER TABLE user1
  ALTER COLUMN demo TYPE TEXT;

        
        ALTER TABLE user1
        ALTER COLUMN demo TYPE TEXT;

**set default value of column**

    ALTER TABLE user1
    alter column demo set DEFAULT 'bangladesh';

**drop default value of column**

    ALTER TABLE user1
    alter column demo drop DEFAULT ;


##### rename a column ADD :::

    ALTER TABLE user1
    RENAME COLUMN demo to country;



#### add constrains

ALTER TABLE user1
alter COLUMN country  set NOT NULL;


ALTER TABLE user1
add constraint unique_email UNIQUE(email);


    ALTER TABLE user1
    alter COLUMN country  set NOT NULL;

    ALTER TABLE user1
    add constraint unique_email UNIQUE(email);




#### Employee Table ::::

####  Employee table under to a department ::::

    CREATE TABLE
        Department(
            deptID SERIAL PRIMARY KEY,
            deptName VARCHAR(50)
        );

#### create table data of department:::

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


#### create employe table data::::
    INSERT INTO Employee VALUES(1,'KHorshed',1);


SELECT * from employee;



###### course table ::::


###### create course table::::
CREATE Table courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  published_date DATE

);

###### - create courses table data ::::
INSERT INTO courses(course_name,description, published_date)
  VALUES
  ('frontend developer','A complete frontend developer','2023-07-13'),
  ('backend developer','A complete backend developer',NULL),
  ('complete web developer','A  complete web developer','2023-05-10');


##### update  a table data ::::

    UPDATE courses 
    set
    course_name ='SQL for Smart'
    WHERE course_id = 1 
    ;

UPDATE courses 
 set
 description ='be a smart tech learner'
 WHERE course_id > 1 or  course_id  < 5
 ;


 ##### delete a table  data ::::

        DELETE FROM courses 
        WHERE course_id = 4;
j
DELETE FROM courses 
WHERE course_id = 4;


SELECT * from courses;