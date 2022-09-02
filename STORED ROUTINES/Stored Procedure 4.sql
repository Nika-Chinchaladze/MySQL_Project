/*
create procedure which will return information about employees average salary through all contracts that they have made 
*/
use mysql_project;

DROP PROCEDURE IF EXISTS p_avg_salary_contract;
DELIMITER $$
CREATE PROCEDURE p_avg_salary_contract(IN p_emp_no INTEGER)
BEGIN
	SELECT 
		e.first_name, 
        e.last_name,
		ROUND(AVG(s.salary), 2) AS average_salary
	FROM employees AS e
		INNER JOIN salaries AS s ON s.emp_no = s.emp_no
	WHERE e.emp_no = p_emp_no;
END$$
DELIMITER ;

call p_avg_salary_contract(10002);