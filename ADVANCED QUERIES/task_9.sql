/*
Define a function that retrieves the largest contract salary value of an employee. Apply it to employee number 11356. 
Also, what is the lowest salary value per contract of the same employee? You may want to create a new function that will deliver this number to you.  
Apply it to employee number 11356 again.
Feel free to apply the function to other employee numbers as well.
*/
use mysql_project;
DROP FUNCTION IF EXISTS f_task9;
DELIMITER $$
CREATE FUNCTION f_task9(f_emp_no INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE answer INT;
    
	SELECT
		MAX(salary)
			INTO answer
	FROM salaries
	WHERE emp_no = f_emp_no
	GROUP BY emp_no;
    
    RETURN answer;
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS f_task91;
DELIMITER $$
CREATE FUNCTION f_task91(f_emp_no INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE answer_2 INT;
    
	SELECT
		MIN(salary)
			INTO answer_2
	FROM salaries
	WHERE emp_no = f_emp_no
	GROUP BY emp_no;
    
    RETURN answer_2;
END$$
DELIMITER ;

SELECT DISTINCT
	emp_no,
    f_task9(11356) AS Maximum,
    f_task91(11356) AS Minimum
FROM salaries
WHERE emp_no = 11356
LIMIT 1;
