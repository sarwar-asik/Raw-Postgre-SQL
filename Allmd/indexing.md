##### index for fast query ::::

SELECT * from employee;

##### for watch or scan the query time to query the data ?

```sql
        EXPLAIN ANALYZE SELECT empID, name,email from employee;
```

##### create index for first query :::::

            CREATE INDEX name_idx on employee(name);

##### don't use LIKE for query with indexing ::::
