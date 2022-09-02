/*
Extract the employee number, first and last name of the first 100 employees
and aa a fourth column, called 'current_employee' saying 'Is still employeed' if the employee is still working in the
company or 'Not an employee anymore' if they are not
*/
use mysql_project;
SELECT
    d.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    CASE
		WHEN d.to_date = (SELECT MAX(to_date) FROM dept_emp m WHERE m.emp_no = e.emp_no) THEN 'Is still employed'
        ELSE 'Not an employee anymore'
	END AS Work_Status
FROM employees e
	INNER JOIN dept_emp d ON d.emp_no = e.emp_no
ORDER BY d.emp_no, d.dept_no
LIMIT 100;
