-- Find the average salary of the male and female employees in each department

use mysql_project;
SELECT
	e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS average_salary
FROM employees e
	INNER JOIN salaries s ON s.emp_no = e.emp_no
    INNER JOIN dept_emp m ON m.emp_no = e.emp_no
    INNER JOIN departments d ON d.dept_no = m.dept_no
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name ASC, e.gender ASC;
    