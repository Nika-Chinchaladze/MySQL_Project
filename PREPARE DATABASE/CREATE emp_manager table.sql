-- create a table called 'emp_manager' (emp_no integer of 11, not null;
-- dept_no - char of 4, null; manager_no - integer of 11, not null)

use mysql_project;
DROP TABLE IF EXISTS emp_manager;
CREATE TABLE emp_manager (
	manager INT,
	dept_no CHAR(4) NULL,
    emp_no INT(11) NOT NULL
);