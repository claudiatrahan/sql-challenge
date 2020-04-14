CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(200) NOT NULL);
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(20),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no,dept_no));
CREATE TABLE dept_manager(
	dept_no VARCHAR(20), 
	emp_no INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no,dept_no,from_date));
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(200),
	last_name VARCHAR(200),
	gender VARCHAR(200),
	hire_date DATE);
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no,from_date));
CREATE TABLE titles(
	emp_no INT,
	title VARCHAR(200),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no,from_date));
SELECT *
FROM titles; 