

SELECT * from department;
SELECT name,email,joining_date from employee;

SELECT * from employee
WHERE salary > 55000 and salary < 60000 and name <> 'Olivia';
-- WHERE name <> 'Olivia;'

SELECT * FROM employee
ORDER BY name
ASC