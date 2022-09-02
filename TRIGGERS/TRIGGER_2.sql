/*
create trigger which will control that negative numbers won't be inserted into salaries table and
they will be replaced with 0 value 
*/

use mysql_project;
COMMIT;
DELIMITER $$
CREATE TRIGGER before_insert_salaries
BEFORE INSERT ON salaries
FOR EACH ROW
BEGIN
	IF NEW.salary < 0 THEN
		SET NEW.salary = 0;
	END IF;
END$$
DELIMITER ;

INSERT INTO salaries VALUES ('10001', -500, '2022-08-30', '9999-01-01');

SELECT * FROM salaries WHERE from_date = '2022-08-30';

ROLLBACK;