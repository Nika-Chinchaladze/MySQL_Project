-- insert data into departments_dup table

use mysql_project;
INSERT INTO departments_dup
SELECT 
	dept_no, 
    dept_name 
FROM departments;