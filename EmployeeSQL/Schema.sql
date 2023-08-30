
--Titles table
create table titles (
	title_id VARCHAR(50) primary key NOT NULL,
	title VARCHAR(50) NOT null
);  


--Employees table
create table employees (
	emp_no INT primary key NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1)NOT NULL,
	hire_date DATE NOT null,
	foreign key (emp_title_id) REFERENCES titles (title_id)
);    


--Departments table
create table departments (
	dept_no VARCHAR(10) primary key NOT NULL,
	dept_name VARCHAR(50) NOT null
);  


--Department employee table
create table dept_emp (
	emp_no INT NOT NULL,  
	dept_no VARCHAR(10) NOT NULL, --primary key 
	constraint PK_dept_emp primary key (emp_no, dept_no),
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
); 



--Salaries table
create table salaries (
	emp_no INT primary key NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
); 


-- Department manager table
create table dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	constraint PK_dept_manager primary key (dept_no, emp_no),
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);          







   


