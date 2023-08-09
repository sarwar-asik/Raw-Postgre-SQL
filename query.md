

###  smart query from databse ::::::


######  get all data :::
            SELECT * from department;

######  get selected data :::::
        SELECT name,email,joining_date from employee;

######  condition query::::
        SELECT * from employee
WHERE salary > 55000 and salary < 60000 and name <> 'Olivia';
######  WHERE name <> 'Olivia;'


######  ascending order by sorting :::::
        SELECT * FROM employee
ORDER BY name
ASC;


######   #### pagination :"::"
        SELECT * FROM employee
ORDER BY name
DESC LIMIT 5 OFFSET 1; 

######  maximum salary sorting ::::

        SELECT * FROM employee ORDER BY salary DESC 
LIMIT 1;


######  Get first 3 maximum salary sorting ::::

        SELECT * FROM employee ORDER BY salary DESC 
LIMIT 1 OFFSET 2;

######  IN , NOT, BETWEEN, LIKE

######  get without 2,3,5 empid employee(NOT IN)::::

        SELECT * from employee 
WHERE empid  NOT IN (2,3,5,10);

######  BETWEEN get salary customize::::

        SELECT * from employee
WHERE salary BETWEEN 50000 AND 60000;

######  get data contain 'Ja' LIKE ::::
        SELECT * from employee
WHERE name  LIKE '%Ja%';


######  get data started with 'j'(match only first CHARACTER)  LIKE ::::
        SELECT * from employee
WHERE name  LIKE 'J%';

######  get data end with 's'(match only last CHARACTER)  LIKE ::::
        SELECT * from employee
WHERE name  LIKE '%s';



######  specipic position :::


######  find "m" in 2nd position  ::::
        SELECT * from employee
WHERE name  LIKE '_m%';


######  find "m" in 3rd position  ::::
        SELECT * from employee
WHERE name  LIKE '__m%';


######  get data started with 'J' and end with 's' LIKE

        SELECT * from employee
WHERE name  LIKE 'J%s';

######  get NULL data ::::

        SELECT * from employee WHERE deptid IS NUll;




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

