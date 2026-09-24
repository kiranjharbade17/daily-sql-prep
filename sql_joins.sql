use startersql;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department_id INT,
    salary INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

INSERT INTO employees (emp_id, emp_name, department_id, salary)
VALUES
(1, 'Rahul', 101, 35000),
(2, 'Priya', 102, 40000),
(3, 'Aman', 101, 32000),
(4, 'Neha', 103, 45000),
(5, 'Riya', 104, 38000);

INSERT INTO departments (dept_id, dept_name)
VALUES
(101, 'Data Science'),
(102, 'HR'),
(103, 'Finance'),
(105, 'Marketing');

select*from employees;
select*from departments;

#JOINS

-- 1. INNER JOINS

select employees.emp_name, departments.dept_name
from employees
inner join departments 
on employees.department_id = departments.dept_id ;

-- 2. Left join

select employees.emp_name, departments.dept_name
from employees
left join departments
on employees.department_id = departments.dept_id;

-- 3.right join
select employees.emp_name, departments.dept_name
from employees
right join departments
on employees.department_id = departments.dept_id;


