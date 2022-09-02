-- which is the highest employee number in the database;
use mysql_project;
SELECT 
    MAX(emp_no) AS Highest
FROM
    employees;