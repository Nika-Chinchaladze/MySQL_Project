-- create a view that will extract the average salary of all managers registered in the database.
-- round this value to the nearest cent

use mysql_project;

CREATE OR REPLACE VIEW v_avg_salary
AS
SELECT 
    ROUND(AVG(s.salary), 2) AS average_salary
FROM
    employees e
        INNER JOIN dept_manager d ON d.emp_no = e.emp_no
        INNER JOIN salaries s ON s.emp_no = e.emp_no;