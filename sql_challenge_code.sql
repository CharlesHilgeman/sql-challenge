-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.employee_num,e.first_name,e.last_name,e.gender,s.salary
FROM salaries AS s
JOIN employees AS e ON
e.employee_num = s.employee_num;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.department_num,dm.manager_num,d.department_name,e.first_name,e.last_name
FROM departments AS d
JOIN department_manager AS dm ON
dm.department_num = d.department_num
JOIN employees AS e ON
e.employee_num = dm.manager_num;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.employee_num,e.first_name,e.last_name,d.department_name
FROM employees AS e
JOIN department_employee AS de ON
e.employee_num = de.employee_num
JOIN departments AS d ON
de.department_num=d.department_num;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,gender
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
CREATE VIEW employees_and_departments AS
SELECT e.employee_num,e.last_name,e.first_name,d.department_name
FROM employees AS e
JOIN department_employee AS de ON
e.employee_num = de.employee_num
JOIN departments AS d ON
de.department_num=d.department_num;

SELECT * FROM employees_and_departments
WHERE department_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM employees_and_departments
WHERE department_name = 'Sales'
OR department_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS same_last_name_freq
FROM employees
GROUP BY last_name
ORDER BY same_last_name_freq DESC;





