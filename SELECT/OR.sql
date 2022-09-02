-- Query should return a list of all employees, whose first name
-- is either Kellie or Aruna
use mysql_project;
SELECT 
    *
FROM employees
WHERE first_name = 'Kellie'
   OR first_name = 'Aruna';