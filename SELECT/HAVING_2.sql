-- Query should return all individuals who have signed more than 1 contract after the 1-st of January 2000
use mysql_project;
SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1;