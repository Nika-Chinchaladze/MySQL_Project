-- if some values as missing replace with another expressions

use mysql_project;
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'Not Provided') AS dept_manager
FROM
    departments_dup;