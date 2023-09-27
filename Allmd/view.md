

###  use for  very complex query 


###  create view with a collection :::::

```sql


  CREATE VIEW view_name 
            as 
            SELECT full_name from employee2;
```

###  get data from view :::


```sql
      SELECT * from view_name;

            SELECT full_name , count(*) from view_name GROUP BY full_name;
```

