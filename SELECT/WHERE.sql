-- query should return all people from employees table
-- whose first name is 'Elvis'
USE mysql_project;
SELECT 
    *
FROM employees
WHERE first_name = 'Elvis';