-- how any departments are in database, use dept_emp table

use mysql_project;
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;