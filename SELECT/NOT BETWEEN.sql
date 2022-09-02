-- Query should return a list with all individuals whose employee
-- number is not between 10004 and 10012
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN 10004 AND 10012;