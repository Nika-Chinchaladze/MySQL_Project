/*
create trigger which will activate after when new record will be inserted into dept_manager table,
action should be: insert new record into salaries table with increased salary + 20000 and with new
from and to_date values
*/
use mysql_project;
DROP TRIGGER IF EXISTS tr_after_insert_manager;
DELIMITER $$
CREATE TRIGGER tr_after_insert_manager
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	DECLARE v_max_salary INT;
    
    SELECT 
		MAX(salary)
			INTO v_max_salary
	FROM salaries
    WHERE emp_no = NEW.emp_no;
    
    IF v_max_salary IS NOT NULL THEN
		UPDATE salaries
        SET to_date = SYSDATE()
        WHERE emp_no = NEW.emp_no and to_date = NEW.to_date;
		
        INSERT INTO salaries VALUES(
			NEW.emp_no,
            v_max_salary + 20000,
            NEW.from_date,
            NEW.to_date
        );
	END IF;
END$$
DELIMITER ;

INSERT INTO dept_manager VALUES(
	'10008',
    'd009',
    DATE_FORMAT(SYSDATE(), '%Y-%m-%d'),
    '9999-01-01'
);

SELECT * FROM dept_manager
WHERE emp_no = '10008';

SELECT * FROM salaries
WHERE emp_no = '10008';