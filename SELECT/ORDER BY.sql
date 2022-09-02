-- Query should return all data from the employees table, ordering it by hire_date in descending order
use mysql_project;
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;