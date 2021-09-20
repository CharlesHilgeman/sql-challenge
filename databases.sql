--departments table
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	department_num VARCHAR,
	department_name VARCHAR
);

ALTER TABLE departments
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM departments;

--dep,employee table
DROP TABLE IF EXISTS department_employee;

CREATE TABLE department_employee (
	employee_num INT,
	department_num VARCHAR
);

ALTER TABLE department_employee
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM department_employee;

--dep,manager table
DROP TABLE IF EXISTS department_manager;

CREATE TABLE department_manager (
	department_num VARCHAR,
	manager_num INT
);

ALTER TABLE department_manager
ADD COLUMN id SERIAL PRIMARY KEY;

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

ALTER TABLE employees
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM employees;

--salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	employee_num INT,
	salary INT
);

ALTER TABLE salaries
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM salaries;

--dep,manager table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

ALTER TABLE titles
ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM titles;