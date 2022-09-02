/*
create a trigger that checks if the hire_date of an employee is higher than the current date.
if true set this date to be the current date, format the output appropriately(YY-MM-DD)
*/
use mysql_project;
DROP TRIGGER IF EXISTS tg_check_date;
DELIMITER $$
CREATE TRIGGER tg_check_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	IF NEW.hire_date > DATE_FORMAT(SYSDATE(), '%Y-%m-%d') THEN
		SET NEW.hire_date = DATE_FORMAT(SYSDATE(), '%Y-%m-%d');
	END IF;
END$$
DELIMITER ;

INSERT INTO employees VALUES(
	'999904',
    '1970-01-31',
    'Nika',
    'Chinchaladze',
    'M',
    '2222-01-01'
);

SELECT * FROM employees 
WHERE emp_no = '999904';
