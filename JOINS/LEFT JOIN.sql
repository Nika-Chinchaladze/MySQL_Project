/* join the employees and dept_manager tables to return a subset of all the employees
whose last name is Markovitch. see if the output contains a manager with that name. */
use mysql_project;
SELECT 
    e.emp_no, 
    e.first_name, 
    e.last_name, 
    d.dept_no, 
    d.from_date
FROM employees AS e
	LEFT JOIN dept_manager AS d ON d.emp_no = e.emp_no
WHERE e.last_name = 'Markovitch' AND d.dept_no IS NOT NULL
ORDER BY d.dept_no DESC , e.emp_no ASC;