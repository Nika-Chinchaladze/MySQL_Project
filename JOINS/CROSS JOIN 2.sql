-- RETURN a list with the first 10 employees will all the departments can be assigned to
use mysql_project;
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS fullname,
    d.dept_name
FROM
    employees AS e
        CROSS JOIN
    departments d
WHERE
    e.emp_no <= 10010;