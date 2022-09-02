/*
Obtain a result set containing the emp_no, first and last names of employees with number higher than 109990.
create fourth column in the query, indicating wether this employee is also a manager, according to the data
provided in the dept_manager table or a regular employeee
*/
use mysql_project;
SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    CASE
		WHEN d.dept_no IS NULL THEN 'employee'
        ELSE 'manager'
	END AS Working_Status
FROM employees e
	LEFT JOIN dept_manager d ON d.emp_no = e.emp_no
WHERE e.emp_no > 109990;