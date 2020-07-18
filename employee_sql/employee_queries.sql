
--list employees with info:  
	-- employee number, last name, first name, sex, and salary.

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary 
	from employees a
	join salaries b
		on (a.emp_no = b.emp_no)
	;


--list employees hired in 1986 with info: 
	-- first name, last name, and hire date.

select first_name, last_name, hire_date
	from employees
	where date_part('year', hire_date) = '1986'
	;


-- list department managers with info: 
	-- department number, department name, manager's emp. number, manager's last name, manager's first name.

select a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name 
	from dept_manager a
	join departments b
		on (a.dept_no = b.dept_no)
	join employees c
		on (a.emp_no = c.emp_no)
;




