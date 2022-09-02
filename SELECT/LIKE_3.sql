-- Query should return a list of all employees whose number is written with 5 characters
-- and starts with 1000
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');