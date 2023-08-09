##### update database name ::::

ALTER DATABASE test1 RENAME TO test3


#### update table name ::

 ALTER TABLE learners RENAME TO student;

#### update column 

    ALTER TABLE user1 ALTER COLUMN demo TYPE TEXT;

    ALTER TABLE user1 alter column country set DEFAULT 'bangladesh';
    ALTER TABLE user1 RENAME COLUMN demo to country;
    
ALTER TABLE user1 alter COLUMN country set NOT NULL;

ALTER TABLE user1 add constraint unique_email UNIQUE(email);

#### update table data

UPDATE courses 
 set
 description ='be a smart tech learner'
 WHERE course_id > 1 or  course_id  < 5
 ;


