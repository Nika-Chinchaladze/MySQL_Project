-- Create trigger that will insert data into titles table automatically,
-- when new data will be inserted into employees table
use mysql_project;
DELIMITER $$

CREATE TRIGGER after_insert_emp
AFTER INSERT 
ON employees FOR EACH ROW
BEGIN
	IF NEW.emp_no > (SELECT MAX(emp_no) FROM titles) THEN
		INSERT INTO titles(emp_no, title)
		VALUES(new.emp_no);
	END IF;
END$$

DELIMITER ;
