-- select all managers' first and last name, hire date, job title, start date and department name

use mysql_project;
select
	d.emp_no,
    concat(e.first_name, ' ', e.last_name) as fullname,
    e.hire_date,
    t.title,
    d.from_date,
    m.dept_name
from dept_manager as d
	left join employees as e on e.emp_no = d.emp_no
    left join titles as t on t.emp_no = e.emp_no
    left join departments as m on m.dept_no = d.dept_no
order by m.dept_name asc, fullname asc;