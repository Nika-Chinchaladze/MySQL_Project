-- Query should return number of distinct first names from employees table
use mysql_project;
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;