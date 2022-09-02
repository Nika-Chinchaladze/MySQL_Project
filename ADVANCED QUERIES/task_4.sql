-- Retrieve a list of all employees that have been hired in 2000
use mysql_project;
SELECT
	emp_no,
    CONCAT(first_name, ' ', last_name) AS FullName,
    hire_date
FROM employees
WHERE YEAR(hire_date) = 2000
ORDER BY emp_no ASC;