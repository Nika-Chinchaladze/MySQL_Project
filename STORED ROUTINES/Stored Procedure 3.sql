-- create procedure, which return first_name, last_name, salary, from_date and to_date
-- there should be one parameter to filter results through employees numbers
use mysql_project;
DROP PROCEDURE IF EXISTS p_emp_info;
DELIMITER $$
CREATE PROCEDURE p_emp_info(IN p_emp_no INTEGER)
BEGIN
	SELECT
		CONCAT(e.first_name, ' ', e.last_name) AS FullName,
        s.salary,
        s.from_date,
        s.to_date
	FROM employees AS e
		INNER JOIN salaries AS s ON s.emp_no = e.emp_no
	WHERE e.emp_no = p_emp_no;
END$$
DELIMITER ;

call p_emp_info(10001);