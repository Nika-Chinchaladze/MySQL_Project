/* extract a list containing information about all managers' employee
number, first and last name, dept_no and hire_date */

use mysql_project;
SELECT 
    d.emp_no, 
    e.first_name, 
    e.last_name, 
    e.hire_date
FROM employees AS e
        INNER JOIN dept_manager AS d ON d.emp_no = e.emp_no
ORDER BY d.emp_no ASC;
