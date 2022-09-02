/*
Based on the previous example, you can now try to create a function that accepts also a second parameter which would be a character sequence. 
Evaluate if its value is 'min' or 'max' and based on that retrieve either the lowest or the highest salary (using the same logic and code 
from Exercise 9). If this value is a string value different from ‘min’ or ‘max’, then the output of the function should return 
the difference between the highest and the lowest salary.
*/
use mysql_project;
DROP FUNCTION IF EXISTS f_task10;
DELIMITER $$
CREATE FUNCTION f_task10(f_emp_no INT, extreme CHAR(3))
RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE answer INT;
    SET @maximum = (SELECT MAX(salary) FROM salaries WHERE emp_no = f_emp_no GROUP BY emp_no);
    SET @minimum = (SELECT MIN(salary) FROM salaries WHERE emp_no = f_emp_no GROUP BY emp_no);
    
    SELECT
		CASE
			WHEN extreme = 'min' THEN @minimum
			WHEN extreme = 'max' THEN @maximum
			ELSE @maximum - @minimum
		END
			INTO answer
    FROM salaries
    WHERE emp_no = f_emp_no
    LIMIT 1;

    RETURN answer;
END$$
DELIMITER ;

SELECT f_task10(11356, 'max') AS Answer;
SELECT f_task10(11356, 'min') AS Answer;
SELECT f_task10(11356, 'not') AS Answer;