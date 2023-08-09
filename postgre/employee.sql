-- Active: 1691220783830@@127.0.0.1@5432@test1@public

CREATE TABLE if not exists employee(
    emp_id SERIAL PRIMARY key,
    emp_name VARCHAR(100),
    emp_department VARCHAR(50),
    emp_salary DECIMAL(10,2),
    emp_hire_date DATE
  
);

INSERT INTO employee (emp_name, emp_department, emp_salary, emp_hire_date)
VALUES
    ('John Doe', 'Engineering', 60000.00, '2023-01-15'),
    ('Jane Smith', 'Sales', 55000.50, '2023-02-20'),
    ('Michael Johnson', 'Marketing', 48000.75, '2023-03-18'),
    ('Alice Brown', 'HR', 52000.25, '2023-04-22'),
    ('Robert White', 'Engineering', 61000.00, '2023-05-10');


SELECT DISTINCT emp_department from employee;





