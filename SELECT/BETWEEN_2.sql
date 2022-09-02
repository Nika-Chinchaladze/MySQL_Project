-- Query should return the names of all departments with numbers between d003 and d006
use mysql_project;
SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';