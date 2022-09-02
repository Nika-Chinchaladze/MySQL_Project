-- Query should return a list with data about all female employees
-- who were hired in the year 2000 or after
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';