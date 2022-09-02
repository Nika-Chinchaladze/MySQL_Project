-- create a procedure that will provide the average salary of all employees
use mysql_project;
DROP PROCEDURE IF EXISTS p_avg_salary;
DELIMITER $$
CREATE PROCEDURE p_avg_salary()
BEGIN
	SELECT 
		ROUND(AVG(salary), 2)
    FROM salaries;
END$$
DELIMITER ;

call p_avg_salary;