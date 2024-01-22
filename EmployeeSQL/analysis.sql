--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from lc.employee e left join lc.salary s on e.emp_no=s.salary;
	
--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from lc.employee
where extract(year from hire_date)=1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select d.dept_no, d.dept_name, dm.emp_no as manager_emp_no, e.last_name as manager_last_name, e.first_name as manager_first_name	
from lc.department d 
	left join lc.dept_manager dm on d.dept_no=dm.dept_no
	left join lc.employee e on dm.emp_no=e.emp_no;
	
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
from lc.employee e 
	left join lc.dept_emp de on e.emp_no=de.emp_no
	inner join lc.department d on de.dept_no=d.dept_no 
order by e.emp_no, d.dept_name;
	
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from lc.employee
where last_name like('B%') and first_name='Hercules';


--List each employee in the Sales department, including their employee number, last name, and first name.
select d.dept_name, e.emp_no, e.last_name, e.first_name
from lc.department d 
	left join lc.dept_emp de on d.dept_no=de.dept_no
	inner join lc.employee e on de.emp_no=e.emp_no
where d.dept_name='Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select d.dept_name, e.emp_no, e.last_name, e.first_name
from lc.department d 
	left join lc.dept_emp de on d.dept_no=de.dept_no
	inner join lc.employee e on de.emp_no=e.emp_no
where d.dept_name in ('Sales','Development')
order by d.dept_name;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(*) as counts
from lc.employee
group by last_name 
order by count(*) desc, last_name;