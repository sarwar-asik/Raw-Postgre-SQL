
##### start joining concept ::::

        SELECT employee2.full_name,employee2.job_role,employee2.manager_id,department2.department_name
        FROM employee2
        INNER JOIN department2  ON  department2.department_id = employee2.department_id ;


##### left join ::::

        SELECT *
            FROM employee2
            LEFT JOIN department2  ON  department2.department_id = employee2.department_id ;


##### RIGHT join ::::

        SELECT *
        FROM employee2
        RIGHT JOIN department2  ON  department2.department_id = employee2.department_id ;



##### FULL join ::::

        SELECT *
            FROM employee2
            FULL JOIN department2  ON  department2.department_id = employee2.department_id ;


##### Natural JOIN ::::

        SELECT *
            from employee
            NATURAL JOIN department2;


##### CROSS JOIN ::::

        SELECT *
            from employee
            CROSS JOIN department2;

