-- Query should return the 10 highest paid employees
use mysql_project; 
SELECT 
    emp_no, salary
FROM
    salaries
ORDER BY salary DESC
LIMIT 10; 