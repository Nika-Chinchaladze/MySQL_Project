/* return a list with all possible combinations between managers from the dept_manager table and 
department number 9 */
use mysql_project;
SELECT 
    m.*, d.dept_no
FROM
    dept_manager AS m
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009'
ORDER BY m.dept_no ASC , m.emp_no ASC;