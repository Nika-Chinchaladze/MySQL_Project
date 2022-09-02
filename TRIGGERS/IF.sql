/*
IF employee is F then query should return Felame
and if employee if M then quey should return Male in the extra column
*/

SELECT
	emp_no,
    first_name,
    last_name,
    IF(gender = 'F', 'Female', 'Male') AS Full_Gender
FROM employees;