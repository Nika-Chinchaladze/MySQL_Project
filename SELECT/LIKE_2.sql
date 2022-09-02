-- Query should return a list of all employees, who have been hired in the year 2000
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%'); 