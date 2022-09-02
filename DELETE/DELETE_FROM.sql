-- remove the department number 10 record from the departments table
use mysql_project;
DELETE FROM departments 
WHERE
    dept_no = 'd010';