/*
create trigger which will activate after when new record will be inserted into dept_manager table,
action should be: insert new record into salaries table with increased salary + 20000 and with new
from and to_date values
*/

use mysql_project;
DROP TRIGGER IF EXISTS after_insert_manager;
DELIMITER $$
CREATE TRIGGER after_insert_manager
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	SET @new_emp_no = (SELECT last_insert_id(emp_no) FROM dept_manager LIMIT 1);
    SET @max_salary = (SELECT MAX(salary) FROM salaries WHERE emp_no = @new_emp_no);
    SET @last_date = (SELECT MAX(to_date) FROM salaries WHERE emp_no = @new_emp_no);
    INSERT INTO salaries VALUES(
		@new_emp_no,
        @max_salary + 20000,
        @last_date,
        '9999-01-01'
    );
    
END$$
DELIMITER ;


INSERT INTO dept_manager VALUES(
		'10105',
        'd001',
        '2001-06-11',
        '9999-01-01'
    );

SELECT * FROM salaries
WHERE emp_no = 10105
ORDER BY to_date ASC;

