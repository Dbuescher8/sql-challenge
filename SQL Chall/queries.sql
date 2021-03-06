-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select  emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary from employees as emp
inner join salaries as sal 
on emp.emp_no = sal.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select DE.dept_no, dept.dept_name, DE.emp_no, emp.last_name, emp.first_name  from dept_manager as DE
inner join employees as emp on emp.emp_no = DE.emp_no
inner join departments as dept on DE.dept_no = dept.dept_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, Dept.dept_name from dept_emp as DE
inner join employees as emp on emp.emp_no = DE.emp_no
inner join departments as dept on DE.dept_no = dept.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees 
where first_name = 'Hercules' and last_name like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, Dept.dept_name from dept_emp as DE
inner join employees as emp on emp.emp_no = DE.emp_no
inner join departments as dept on DE.dept_no = dept.dept_no
where dept.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, Dept.dept_name from dept_emp as DE
inner join employees as emp on emp.emp_no = DE.emp_no
inner join departments as dept on DE.dept_no = dept.dept_no
where dept.dept_name in ('Sales' , 'Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name order by count(last_name) desc

