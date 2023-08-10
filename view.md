

###  use for  very complex query 


###  create view with a collection :::::

            CREATE VIEW view_name 
            as 
            SELECT full_name from employee2;

###  get data from view :::
            SELECT * from view_name;

            SELECT full_name , count(*) from view_name GROUP BY full_name;

