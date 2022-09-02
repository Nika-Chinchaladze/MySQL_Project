-- query should return all female employees, whose first name is Kellie
use mysql_project;
SELECT 
    *
FROM employees
WHERE gender = 'F' 
  AND first_name = 'Kellie';