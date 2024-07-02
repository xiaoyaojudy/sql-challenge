-- question# 1

SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
JOIN salaries ON
salaries.emp_no = employees.emp_no;

-- question# 2

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- question# 3

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager
JOIN departments ON
dept_manager.dept_no = departments.dept_no
JOIN employees ON
employees.emp_no = dept_manager.emp_no;

-- question# 4

SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN departments ON
dept_emp.dept_no = departments.dept_no;

-- question# 5

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- question# 6

SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

-- question# 7

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- question# 8

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;







