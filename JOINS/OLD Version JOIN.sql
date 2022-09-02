/* Extract a list containing information about all managers' employees number, first_name and last_name, dept_no and hire_date.
use the old type of join syntax to obtain the result */
use mysql_project;
SELECT 
    d.emp_no, 
    e.first_name, 
    e.last_name, 
    d.dept_no, 
    e.hire_date
FROM
    dept_manager AS d,
    employees AS e
WHERE
    d.emp_no = e.emp_no;
