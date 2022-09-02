/*
extract a dataset containing the following information about the managers:
emp_no, first and last names. add two columns at the end - one showing the difference between the
maximum and minimum salary of the employee and another one saying whether this salary raise was higher 
than $30,000 or not
*/
use mysql_project;
WITH CHINCHO AS
(
SELECT
	d.emp_no,
    e.first_name,
    e.last_name,
    (SELECT MAX(s.salary) - MIN(s.salary) FROM salaries s WHERE s.emp_no = e.emp_no) AS Difference
FROM employees e
	INNER JOIN dept_manager d ON d.emp_no = e.emp_no
)
SELECT 
	*,
    CASE
		WHEN Difference > 30000 THEN 'YES'
        ELSE 'NOT'
	END Raised_by_30000
FROM CHINCHO;