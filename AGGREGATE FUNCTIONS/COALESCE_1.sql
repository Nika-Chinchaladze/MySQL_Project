/* Select the department number and name from the departments_dup table
and add a third column where you name the department number 'dept_no' as
'dept_info'. if 'dept_no' does not have a value, then use 'dept_name' */

use mysql_project;
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS third_column
FROM
    departments_dup;