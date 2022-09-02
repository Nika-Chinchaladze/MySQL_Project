/*
Create a procedure that asks you to insert an employee number to obtain an output containing the same number, 
as well as the number and name of the last department the employee has worked for.
Finally, call the procedure for employee number 10010.
If you've worked correctly, you should see that employee number 10010 has worked for department number 6 - "Quality Management".
*/

use mysql_project;
DROP PROCEDURE IF EXISTS p_task6;
DELIMITER $$
CREATE PROCEDURE p_task6(IN p_emp_no INT)
BEGIN
	SELECT
		m.emp_no,
		CONCAT(e.first_name, ' ', e.last_name) AS FullName,
		m.dept_no,
		d.dept_name,
		m.from_date
	FROM employees e
		INNER JOIN dept_emp m ON m.emp_no = e.emp_no
		INNER JOIN departments d ON d.dept_no = m.dept_no
	WHERE e.emp_no = p_emp_no
	HAVING m.from_date = (
		SELECT 
			MAX(p.from_date) 
		FROM dept_emp p 
		WHERE e.emp_no = p.emp_no
	);
END$$
DELIMITER ;

CALL p_task6(10010);