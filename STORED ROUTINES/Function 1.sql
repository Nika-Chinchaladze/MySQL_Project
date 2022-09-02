/*
create function which return average salary through employee's number
*/

use mysql_project;
DROP FUNCTION IF EXISTS f_avg_salary;
DELIMITER $$
CREATE FUNCTION f_avg_salary(f_emp_no INTEGER)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
	DECLARE f_answer DECIMAL(10,2);
		SELECT
			AVG(salary)
				INTO f_answer
		FROM salaries
		WHERE emp_no = f_emp_no;
	RETURN f_answer;
END$$
DELIMITER ;

SELECT f_avg_salary(11300);