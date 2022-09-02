-- Query should return all records from employees table, aside from those
-- with employees name John, Mark or Jacob
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');