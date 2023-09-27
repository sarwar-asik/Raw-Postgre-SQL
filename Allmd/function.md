### function in sql 

```sql
        CREATE PROCEDURE DEACTIVATE_UNPAID_ACCOUNT()
        LANGUAGE SQL
        AS $$ 
            UPDATE accounts SET ACCOUNT = false where balance =0
        $$;



```
**call the functions**

```sql

    CALL deactivate_unpaid_account() ;
```


#### function 2 

```sql
    CREATE Function account_type_count(account_type text) RETURNS INTEGER
    LANGUAGE plpgsql
    as $$
        DECLARE account_count int;
        BEGIN
        SELECT count(*) into account_count from accounts where accounts.account_type = $1;
        RETURN  account_count;
        END;
    $$
```