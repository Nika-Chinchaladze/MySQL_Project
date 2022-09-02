/*
create trigger which won't allow user to change salary with negative number and
in that case salary will be the same old number
*/
use mysql_project;
COMMIT;
DELIMITER $$
CREATE TRIGGER before_update_salary
BEFORE UPDATE ON salaries
FOR EACH ROW
BEGIN
	IF NEW.salary < 0 THEN
		SET NEW.salary = OLD.salary;
	END IF;
END$$
DELIMITER ;

UPDATE salaries
SET salary = -1000
WHERE from_date = '2002-06-22'
  AND emp_no = 10001;

SELECT * FROM salaries
WHERE from_date = '2002-06-22'
  AND emp_no = 10001;