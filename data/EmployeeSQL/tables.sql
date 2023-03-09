create table "departments"(
	"dept_no" VARCHAR(30) NOT null,
	"dept_name" VARCHAR(30) NOT null,
	PRIMARY KEY ("dept_no"));

create table "dept_emp"(
	"emp_no" INT,
	"dept_no" VARCHAR(10) NOT null,
	PRIMARY KEY ("emp_no", "dept_no"),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

create table "dept_manager"(
	"dept_no" VARCHAR(10) NOT null,
	"emp_no" INT ,
	PRIMARY KEY ("emp_no","dept_no"),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no));
	
create table "employees" (
	"emp_no" INT,
	"emp_title_id" VARCHAR(10) NOT null,
	"birth_date" VARCHAR(30) NOT null,
	"first_name" VARCHAR(30) NOT null,
	"last_name" VARCHAR(30) NOT null,
	"sex" VARCHAR(10) NOT null,
	"hire_date" VARCHAR(30) NOT null,
	PRIMARY KEY ("emp_no"),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
	
create table "salaries"(
	"emp_no" INT ,
	"salary" INT ,
	PRIMARY KEY ("emp_no", "salary"),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
create table "titles"(
	"title_id" VARCHAR(10) NOT null,
	"title" VARCHAR(30) NOT null,
	PRIMARY KEY ("title_id"));


	

	



	