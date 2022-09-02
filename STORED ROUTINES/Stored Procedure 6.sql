/*
create procedure called 'p_emp_information' that uses as parameters the first and the last name of an individual
and return their employee number as output result
*/

use mysql_project;
DROP PROCEDURE IF EXISTS p_emp_information;
DELIMITER $$
CREATE PROCEDURE p_emp_information(IN p_name VARCHAR(50), IN p_surname VARCHAR(50), OUT p_emp_no INTEGER)
BEGIN
	SELECT
		MIN(emp_no)
			INTO p_emp_no
	FROM employees
    WHERE first_name = p_name
	  AND last_name = p_surname;
END$$
DELIMITER ;

set @p_emp_no = 0;
call p_emp_information('Georgi', 'Facello', @p_emp_no);
select @p_emp_no;