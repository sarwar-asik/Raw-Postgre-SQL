##### AGGREGATE Function ::::

    SELECT * from employee;

##### get average salary :::

    SELECT AVG(salary) as AverageSalary from employee;

##### get MAX salary :::

    SELECT MAX(salary) as MaximumSalary from employee;

##### get SUM salary :::

    SELECT SUM(salary) as TotalSalary from employee;

##### group avarage data ;

    SELECT deptid, AVG(salary) from employee GROUP BY deptid;

##### Aggregate with joining ::::

    SELECT d.deptname, avg(e.salary),sum(e.salary) as TOtalSalary,max(e.salary),min(e.salary),count(*) from employee e
        FULL JOIN department d on e.deptid = d.deptid
        GROUP BY d.deptname         ;


    SELECT d ,sum(salary),count(*) from department d
        FULL JOIN employee e on e.deptid = d.deptid
        GROUP BY d.deptid HAVING sum(e.salary) > 40000
