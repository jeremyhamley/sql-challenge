--1. list all employees and display info:  
	-- employee number, last name, first name, sex, and salary.

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary 
from employees a
join salaries b
	on (a.emp_no = b.emp_no)
;

--2. list all employees hired in 1986 and display info: 
	-- first name, last name, and hire date.

select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = '1986'
;

--3. list all department managers and display info: 
	-- department number, department name, manager's emp. number, manager's last name, and manager's first name.

select a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name 
from dept_manager a
join departments b
	on (a.dept_no = b.dept_no)
join employees c
	on (a.emp_no = c.emp_no)
;

--4. list all employees and display department info:
	-- employee number, last name, first name, and department name.

select a.dept_emp_no, c.last_name, c.first_name, b.dept_name  
from dept_emp a
join departments b
	on (a.dept_no = b.dept_no)
join employees c
	on (a.dept_emp_no = c.emp_no)
;

--5. list all employees whose first name is "Hercules" and last name begins with "B" and display info: 
	-- first name, last name, and sex

select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'	
;

--6. List all employees in the Sales department and display info:
	-- employee number, last name, first name, and department name
	
select a.dept_emp_no, b.last_name, b.first_name, c.dept_name
from dept_emp a
join employees b
	on (a.dept_emp_no = b.emp_no)
join departments c
	on (a.dept_no = c.dept_no)
where a.dept_no in (
	select dept_no 
	from departments 
	where dept_name = 'Sales'
	)
;

--7. List all employees in the Sales and Development departments and display info:
	-- employee number, last name, first name, and department name

select a.dept_emp_no, b.last_name, b.first_name, c.dept_name
from dept_emp a
join employees b
	on (a.dept_emp_no = b.emp_no)
join departments c
	on (a.dept_no = c.dept_no)
where a.dept_no in (
	select dept_no 
	from departments 
	where dept_name = 'Sales'
	or dept_name = 'Development'
	)
;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as last_name_count
from employees
group by last_name
order by last_name_count desc
;

