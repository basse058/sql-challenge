--create departments table
drop table if exists departments; 
drop table if exists titles;
drop table if exists employees;
drop table if exists dept_emp;
drop table if exists dept_managers;
drop table if exists salaries;

CREATE TABLE departments (
	dept_no varchar(30),
	dept_name varchar(30) NOT NULL, 
	PRIMARY KEY (dept_no)
);
select * from departments

--create titles table
Create Table titles (
	title_id VARCHAR(15) NOT NULL,
	title VARCHAR(15) NOT NULL,
	primary KEY(title_id)
);
select * from titles

--create employees table
Create Table employees (
	emp_no INT,
	emp_title VARCHAR(30) NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE, 
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE,
	PRIMARY KEY (emp_no)
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);
select * from employees

--create dept_emp table
Create Table dept_emp (
	emp_no INT, 
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp

--create dept_managers table
Create Table dept_managers (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_managers

--create salaries table
Create Table salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries

