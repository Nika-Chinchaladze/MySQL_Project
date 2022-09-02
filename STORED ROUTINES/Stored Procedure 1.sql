-- create stored procedure, which will return first 100 rows from employees table
use mysql_project;

DROP PROCEDURE IF EXISTS p_first_emps;

DELIMITER $$
CREATE PROCEDURE p_first_emps()
BEGIN
	SELECT * FROM employees
    ORDER BY emp_no ASC
    LIMIT 100;
END$$
DELIMITER ;

call p_first_emps();
