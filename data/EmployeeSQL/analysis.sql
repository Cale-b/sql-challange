
--1
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries
ON employees.emp_no=salaries.emp_no;

--2
select first_name, last_name, hire_date 
from employees
where hire_date between '1/1/1986' and '12/31/1986';

--3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager
on departments.dept_no=dept_manager.dept_no
inner join employees
on dept_manager.emp_no=employees.emp_no;

-- 4
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no;

-- 5
select first_name, last_name
from employees
where first_name = 'Hercules'
and last_name LIKE 'B%';

-- 6
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

-- 7
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development';

-- 8
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
