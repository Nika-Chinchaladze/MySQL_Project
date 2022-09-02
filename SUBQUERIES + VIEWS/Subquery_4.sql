/*
assign employee number 110022 as a manager to all employees from 10001 to 10020 
and employee number 110039 as a manager to all employees from 10021 to 10040 
*/
use mysql_project;
SELECT 
    (SELECT emp_no FROM employees
	WHERE emp_no = 110022) AS Manager,
    first_name,
    last_name,
    emp_no
FROM
    employees
WHERE
    emp_no BETWEEN 10001 AND 10020
UNION ALL
SELECT 
    (SELECT emp_no FROM employees
	WHERE emp_no = 110039) AS Manager,
    first_name,
    last_name,
    emp_no
FROM
    employees
WHERE
    emp_no BETWEEN 10021 AND 10040
ORDER BY Manager ASC, emp_no ASC;
