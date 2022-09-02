/*
create trigger which will activate after when new record will be inserted into dept_manager table,
action should be: insert new record into salaries table with increased salary + 20000 and with new
from and to_date values
*/

use mysql_project;
DROP TRIGGER IF EXISTS after_insert_dept_manager;
DELIMITER $$
CREATE TRIGGER after_insert_dept_manager
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	SET @new_emp_no = NEW.emp_no;
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

SET @new_date = CAST((SELECT MAX(to_date) FROM salaries WHERE emp_no = '10105') AS NCHAR(50));

INSERT INTO dept_manager VALUES(
		'10105',
        'd001',
        @new_date,
        '9999-01-01'
    );

SELECT * FROM dept_manager;

SELECT * FROM salaries
WHERE emp_no = 10105
ORDER BY to_date ASC;



