-- Query should return all employees whose average salary is higher than $120,000 per anum
use mysql_project;
SELECT 
    emp_no, 
    AVG(salary) AS average_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY average_salary ASC;