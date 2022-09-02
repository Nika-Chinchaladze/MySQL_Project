-- query should return first and last name of those employees from employees table,
-- who work department managers

use mysql_project;
SELECT 
    e.first_name,
    e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            emp_no
        FROM
            dept_manager);