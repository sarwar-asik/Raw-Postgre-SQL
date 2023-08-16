# l2a7-postgresql-assignment-sarwar-asik



#  Some FAQ with PostgresSQL Database :::::




##### 1. What is PostgreSQL?
            Postgres is relational Database with open source . It supports ACID.  Here ACID means 
            Atomicity, Consistency, Isolation, Durability . It can complies with the SQL .
            It is also known as Foreign Data Wrappers.
##### 2. What is the purpose of a database schema in PostgreSQL?
       for the large number of tables PostgresSQL is particularly useful .
       The Schema of the sefarate the database into some organized parts.
       The database are security and access control by using Schemas in PostgresSQL.
       Developer can deploy schema changes with  independently.

##### 3. Explain the primary key and foreign key concepts in PostgreSQL.
            These concept are the fundamental of a postgres SQL table data .
            Primary key used for uniquely identifies  of every data row .
            constraint is the awesome features which  enforces the uniqueness of a data .
            ANd A foreign keys is a deffinit  column for connect multiple table relation .
            Developer are able to  maintain data integrity by the Foreign key.

             
##### 4. What is the difference between the VARCHAR and CHAR data types?

    VARCHAR or Variable Character is column store variable length character strings. For store strings of varying lengths we use VARCHAR.
    CHAR or Fixed Character is  columns store fixed-length character strings and  lead to more storage usage. It used for fixed length for each stored string, which can be useful for storing codes.
##### 5. Explain the purpose of the WHERE clause in a SELECT statement.

        For Filtering Data, Condition Evaluation,Complex Queries,Search and Retrieval and Data Analysis 
        we use WHERE clause .

##### 6. What are the LIMIT and OFFSET clauses used for?

     For backend pagination we use the clauses  
     By using LIMIT restricted the number of rows returned by a query which 
     is very usefull for speedy data get and pagination .
     By using OFFSET  skip a certain number of rows from the beginning of the result set which 
     is also  very usefull for skip willingly data get and pagination .

##### 7. How can you perform data modification using UPDATE statements?

        We use UPDATE  for modify existing datas in a table  on specified condition.
        Here is an example fro UPDATE ::::


        UPDATE your_table_name
        SET column1 = property1, column2 = property2 
        WHERE condition

##### 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

        For combining specipic rows from two or more tables based on related columns 
        the  JOIN operation .
        It helps to Combine Data, Avoid Data Duplication,Establish Relationships,Perform Complex Queries
        and Aggregate Data .

##### 9. Explain the GROUP BY clause and its role in aggregation operations.
      Group BY cluse are helpfull to combine and summarize data across multiple rows.
      Aggregation functions like  SUM, AVG, COUNT, MAX, MIN  can apply by the GROUP BY clause.

      Here is an example of GROUP BY clause :::


        SELECT co.course_name ,count(enr.student_id) as students_enrolled from enrollment enr
        LEFT Join courses co on enr.course_id = co.course_id
        GROUP BY co.course_name 

##### 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

        For COUNT ::
        we use it calculates the number of rows in a group ::::

        SELECT d ,sum(salary),count(*) from department d
        FULL JOIN employee e on e.deptid = d.deptid
        GROUP BY d.deptid HAVING sum(e.salary) > 40000

        For SUM :::
        calculates the sum of a numeric column's values in a group.

        SELECT SUM(salary) as TotalSalary from employee;

         FOR AVG :::
         calculates the average of a numeric column's values in a group.

          SELECT AVG(salary) as AverageSalary from employee;



##### 11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?


      We use indexing fast query and for watch or scan the query time to query the data .
      create index for first query 

        EXPLAIN ANALYZE SELECT empID, name,email from employee;

##### 12. Explain the concept of a PostgreSQL view and how it differs from a table.
 

         View is a virtual table which is based on the result of a SELECT queries.
         It provides an abstraction layer over the data stored .

        CREATE VIEW view_name as  SELECT full_name from employee2;