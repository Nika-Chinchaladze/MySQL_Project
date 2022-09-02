/*
create procedure which will return avg salary of employee and save answer in out parameter
*/

use mysql_project;
DROP PROCEDURE IF EXISTS p_avg_salary_outer;
DELIMITER $$
CREATE PROCEDURE p_avg_salary_outer(IN p_emp_no INTEGER, OUT p_avg_sal DECIMAL(10,2))
BEGIN
	SELECT
		AVG(s.salary)
			INTO p_avg_sal
	FROM employees e
		INNER JOIN salaries s ON s.emp_no = e.emp_no
	WHERE e.emp_no = p_emp_no;
END$$
DELIMITER ;

set @p_avg_sal = 0;
call p_avg_salary_outer(11300, @p_avg_sal);
select @p_avg_sal;
