


SELECT * from employee WHERE salary =(
    SELECT max(salary) FROM employee
);


SELECT * from employee WHERE salary IN(
    SELECT salary FROM employee where name LIKE '%Ja%'
);

SELECT * from employee where salary >(
    SELECT avg(salary) from employee
);

-- without using GROUP BY  :::::

SELECT email ,joining_date ,(
    SELECT avg(salary) from employee
) from employee;


SELECT email,salary from employee;

SELECT dept_id, avg_salary from (
    SELECT deptID AS dept_id, AVG(salary) as avg_salary from employee GROUP BY deptID
) as tempTABLE ;


SELECT deptID, AVG(salary) as avg_salary from employee GROUP BY deptID