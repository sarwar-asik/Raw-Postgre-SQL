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


