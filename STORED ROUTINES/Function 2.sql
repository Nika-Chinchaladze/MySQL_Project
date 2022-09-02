/*
create a function called 'f_emp_info' that takes parameters for first and last name and returns the salary from the
newest contract of that employee
*/

use mysql_project;
DROP FUNCTION IF EXISTS f_emp_info;
DELIMITER $$
CREATE FUNCTION f_emp_info(f_name VARCHAR(50), f_surname VARCHAR(50))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
	DECLARE f_last_salary DECIMAL(10,2);
		SELECT
			s.salary
				INTO f_last_salary
		FROM salaries s
			INNER JOIN employees e ON e.emp_no = s.emp_no
		WHERE e.first_name = f_name
		  AND e.last_name = f_surname
		  AND s.to_date IN (
			SELECT
				max(l.to_date)
			FROM salaries l
			WHERE l.emp_no = s.emp_no
			GROUP BY l.emp_no
		);
	RETURN f_last_salary;
END$$
DELIMITER ;

SELECT f_emp_info('Bezalel', 'Simmel');