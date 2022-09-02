-- Query should return the names of all departments, whose department number value is not null
use mysql_project;
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;