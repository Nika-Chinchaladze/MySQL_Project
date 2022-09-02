/*
Create a trigger that checks if the hire date of an employee is higher than the current date. 
If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).
# Extra challenge: You may try to declare a new variable called 'today' which stores today's data, and then use it in your trigger!
# After creating the trigger, execute the following code to see if it's working properly.
*/

use mysql_project;
DROP TRIGGER IF EXISTS t_task8;
DELIMITER $$
CREATE TRIGGER t_task8
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	SET @today = SYSDATE();
	IF NEW.hire_date > @today THEN 
		SET NEW.hire_date = @today;
	END IF;
END$$
DELIMITER ;

SELECT * FROM employees
ORDER BY emp_no DESC;

INSERT INTO employees VALUES(
	999905,
    '1971-08-11',
    'Leri',
    'Chixladze',
    'M',
    '2025-01-01'
);

SELECT * FROM employees
ORDER BY emp_no DESC;