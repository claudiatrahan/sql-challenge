--1--employee details: emp_no, last_lame, 
--first_name,gender, and salary.

SELECT e.emp_no, e.first_name,e.last_name,e.gender,salary
FROM employees AS e 
LEFT JOIN salaries AS S
ON e.emp_no = s.emp_no; 

--2--list employees who were hired in 1986.
SELECT emp_no, first_name,last_name, hire_date
FROM employees
WHERE hire_date 
BETWEEN '$1986-01-01' AND '$1986-12-31'; 

--3--list manager of all dep.
---include dep_no,dep_name,managers_emp_no
---last_name,first_name, start_date_end_date

SELECT d.dept_no, d.dept_name,dm.emp_no, 
dm.from_date, dm.to_date,
first_name,last_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no; 

--4--List the department of each employee 
--with the following information: 
--emp_no, last_name, first_name, dept_name.
SELECT d.dept_no, d.dept_name, de.emp_no, 
e.last_name,e.first_name
FROM departments AS d

LEFT JOIN dept_emp AS de
ON d.dept_no = de.dept_no

LEFT JOIN employees AS e
ON de.emp_no = e.emp_no; 

--5--List all employees whose first name is 
--"Hercules" and last names begin with "B."

SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--6--List all employees in the Sales department:
--include employee number, last name, first name, and department name.

SELECT *
FROM dept_emp
WHERE dept_no = 'd007';

SELECT * 
FROM departments
WHERE dept_name = 'Sales';

SELECT d.dept_no, d.dept_name, de.emp_no, 
e.last_name,e.first_name
FROM departments d
JOIN dept_emp de
ON (d.dept_no = de.dept_no)
JOIN employees e
ON (de.emp_no = e.emp_no)
WHERE de.dept_no = 'd007';

--7--List all employees in the Sales and Development departments, 
--including their employee number, last name, 
--first name, and department name.
SELECT *
FROM dept_emp
WHERE dept_no = 'd007' 
OR dept_no = 'd005';

SELECT * 
FROM departments
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT d.dept_no, d.dept_name, de.emp_no, 
e.last_name,e.first_name
FROM departments d
JOIN dept_emp de
ON (d.dept_no = de.dept_no)
JOIN employees e
ON (de.emp_no = e.emp_no)
WHERE de.dept_no = 'd007'
OR de.dept_no = 'd005';


--8--In descending order, list the frequency count of 
--employee last names, i.e., how many employees 
--share each last name.

SELECT *
FROM employees;

SELECT COUNT(e.last_name) 
FROM employees e;

SELECT COUNT(e.last_name) AS "All Last Names"
FROM employees e;

SELECT last_name, COUNT(e.last_name) AS "All Last Names"
FROM employees e
GROUP BY last_name
ORDER BY "All Last Names" DESC;


