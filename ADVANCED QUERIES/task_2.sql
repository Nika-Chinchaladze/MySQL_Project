/*
Find the lowest department number encountered in 'dept_emp' table. then find find the highest department number
*/
use mysql_project;
SELECT
	MIN(dept_no) AS extreme_numbers,
    COALESCE('Lowest Number') AS About
FROM dept_emp
UNION
SELECT
	MAX(dept_no) AS extreme_numbers,
    COALESCE('Highest Number') AS About
FROM dept_emp;