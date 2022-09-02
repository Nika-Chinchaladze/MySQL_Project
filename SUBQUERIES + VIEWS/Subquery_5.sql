/*
fill emp_manager with data about employees, the number of the deparments they are working in and their managers
*/
use mysql_project;
INSERT INTO emp_manager
SELECT 
    COALESCE(110022) AS Manager,
    MIN(d.dept_no) AS dept_no,
    e.emp_no
FROM
    employees AS e
		INNER JOIN dept_emp AS d ON d.emp_no = e.emp_no
WHERE
    e.emp_no BETWEEN 10001 AND 10020
GROUP BY COALESCE(110022), e.emp_no
UNION ALL
SELECT 
    COALESCE(110039) AS Manager,
    MIN(d.dept_no) AS dept_no,
    e.emp_no
FROM
    employees as e
		INNER JOIN dept_emp AS d ON d.emp_no = e.emp_no
WHERE
    e.emp_no BETWEEN 10021 AND 10040
GROUP BY COALESCE(110039), emp_no
UNION
SELECT 
    COALESCE(110039) AS Manager, 
    d.dept_no, 
    e.emp_no
FROM employees e
	INNER JOIN dept_emp AS d ON d.emp_no = e.emp_no
WHERE e.emp_no = 110022
UNION
SELECT 
    COALESCE(110022) AS Manager, 
    d.dept_no, 
    e.emp_no
FROM employees e
	INNER JOIN dept_emp AS d ON d.emp_no = e.emp_no
WHERE e.emp_no = 110039
ORDER BY Manager ASC, emp_no ASC;