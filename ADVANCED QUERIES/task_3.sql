/*
obtain a table containing the following three fields for all individuals whose employee number is not greater than 10040:
- employee number
- the lowest departments number among the departments where the employee has worked in
- assign '110022' as 'manager' to all individuals whose emp_no is lower than or equal to 10020 and '110039' to those whose
number is between 10021 and 10040 inclusive
*/
use mysql_project;
SELECT
	e.emp_no,
    MIN(m.dept_no) AS dept_no,
    CASE
		WHEN e.emp_no BETWEEN 10001 AND 10020 THEN '110022'
        ELSE '110039'
	END AS manager
FROM employees e
	INNER JOIN dept_emp m ON m.emp_no = e.emp_no
WHERE e.emp_no <= 10040
GROUP BY e.emp_no
ORDER BY e.emp_no ASC;