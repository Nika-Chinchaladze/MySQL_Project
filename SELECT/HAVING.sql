-- Query should return all first names that appear more than 250 times in the employees table
use mysql_project;
SELECT 
    first_name, 
    COUNT(emp_no) AS quantity
FROM
    employees
GROUP BY first_name
HAVING COUNT(emp_no) > 250
ORDER BY quantity ASC;