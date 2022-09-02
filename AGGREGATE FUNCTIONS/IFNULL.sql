-- if some values as missing replace with another expressions

use mysql_project;
SELECT 
    dept_no, IFNULL(dept_name, 'Not Provided') AS dep_name
FROM
    departments_dup;