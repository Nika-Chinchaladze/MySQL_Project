-- select the entire information for all employees whose job title is 'Assistant Engineer'

use mysql_project;
SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND t.title = 'Assistant Engineer')
ORDER BY emp_no ASC;