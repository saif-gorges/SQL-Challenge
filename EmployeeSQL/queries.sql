--List the following details of each employee: employee number, last name, first name, sex, and salary.
create view employee_details
as 
select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries
on (employees.emp_no = salaries.emp_no)

--List first name, last name, and hire date for employees who were hired in 1986.
create view employees_1986
as
select first_name, last_name, hire_date
from employees
where hire_date like '%1986%'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
create view department_manager_details
as
select dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
from dept_manager
left join employees
on (dept_manager.emp_no = employees.emp_no)
left join departments
on (dept_manager.dept_no = departments.dept_no)

--List the department of each employee with the following information: employee number, last name, first name, and department name.
create view employee_department_details
as
select employees.emp_no, last_name, first_name, dept_name
from departments
join dept_emp
on (departments.dept_no = dept_emp.dept_no)
join employees
on (dept_emp.emp_no = employees.emp_no)

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
create view hercules
as
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
create view sales_employees
as
select dept_emp.emp_no, last_name, first_name, dept_name
from departments
join dept_emp
on (departments.dept_no = dept_emp.dept_no)
join employees
on (dept_emp.emp_no = employees.emp_no)
where dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
create view sales_and_dev
as
select dept_emp.emp_no, last_name, first_name, dept_name
from departments
join dept_emp
on (departments.dept_no = dept_emp.dept_no)
join employees
on (dept_emp.emp_no = employees.emp_no)
where dept_name = 'Sales' and dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
create view lastname_count
as
select last_name
	,count (last_name) as "Frequency" from employees
	group by last_name
	order by "Frequency" desc;
