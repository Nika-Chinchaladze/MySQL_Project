-- which is the lowest employee number in the database;
use mysql_project;
SELECT 
    MIN(emp_no) AS Lowest
FROM
    employees;