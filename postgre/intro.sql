DROP DATABASE university_manaagement2;

CREATE DATABASE test1;

ALTER DATABASE test1 RENAME TO test3 ;

-- create table  ::::

CREATE TABLE
    student (
        student_id INT,
        first_name VARCHAR(40),
        last_name VARCHAR(30),
        cgpa NUMERIC(1, 2)
    ) -- update table name ::
ALTER TABLE
    learners RENAME TO student;

----### Delete a table ::::

-- DROP TABLE student;

CREATE TABLE
    "user1"(
        user_id SERIAL,
        user_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        age int DEFAULT 18,
    );

insert into user1 (1,'abc', 'ab@gmail.com',20);

-- SELECT * from user1;

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

ALTER TABLE user1
add
    COLUMN password VARCHAR(255) DEFAULT 'admin1234' NOT NULL;
alter TABLE
    user1 DROP COLUMN age;

-- SELECT * from user1

-- TRUNCATE TABLE user1

ALTER TABLE user1 add COLUMN demo int;

ALTER TABLE user1 ALTER COLUMN demo TYPE TEXT;

ALTER TABLE user1 alter column country set DEFAULT 'bangladesh';

insert into user1 values (5,'Imdad','imdad@gmail.com');

-- rename a column ADD

ALTER TABLE user1 RENAME COLUMN demo to country;

-- add constrains

ALTER TABLE user1 alter COLUMN country set NOT NULL;

ALTER TABLE user1 add constraint unique_email UNIQUE(email);

SELECT * from user1 ;