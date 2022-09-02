-- Query should return a list with all employees salaries higher than $150000 per annum
use mysql_project;
SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;