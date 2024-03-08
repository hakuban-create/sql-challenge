DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;


CREATE TABLE departments (
	dept_no VARCHAR(200) NOT NULL,
    dept_name VARCHAR(200) NOT NULL,
	PRIMARY KEY (dept_no)
);
CREATE TABLE titles (
	title_id VARCHAR(200) NOT NULL,
	title VARCHAR(200) NOT NULL,
	PRIMARY KEY (title_id)
);
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(200) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	sex VARCHAR(200) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);
CREATE TABLE dept_emp (
	id SERIAL NOT NULL, 
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(200) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);
CREATE TABLE dept_manager (
	id SERIAL NOT NULL, 
	demp_no VARCHAR(200) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(demp_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
CREATE TABLE salaries (
	id SERIAL NOT NULL, 
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);




