-- extract the information about all department managers who were hired
-- between the 1-st of january 1990 and the 1-st of january 1995

use mysql_project;
SELECT 
    d.*,
    e.first_name,
    e.last_name
FROM
    dept_manager d
		INNER JOIN employees e ON e.emp_no = d.emp_no
WHERE
    d.emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');