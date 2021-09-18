--departments table
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	department_num VARCHAR,
	department_name VARCHAR
);
SELECT * FROM departments;

--dep,employee table
DROP TABLE IF EXISTS department_employee;

CREATE TABLE department_employee (
	employee_num INT,
	department_num VARCHAR
);

SELECT * FROM department_employee;

--dep,manager table
DROP TABLE IF EXISTS department_manager;

CREATE TABLE department_manager (
	department_num VARCHAR,
	manager_num INT
);

SELECT * FROM department_manager;

--employees table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	employee_num INT,
	employee_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR(1),
	hire_date DATE
);

SELECT * FROM employees;

--salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	employee_num INT,
	salary INT
);

SELECT * FROM salaries;

--dep,manager table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM titles;