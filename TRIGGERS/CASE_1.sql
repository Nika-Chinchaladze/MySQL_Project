/*
IF employee is F then query should return Felame
and if employee if M then quey should return Male in the extra column
*/

SELECT
	emp_no,
    first_name,
    last_name,
    CASE
		WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
        ELSE 'No Determined'
	END AS Full_Gender
FROM employees;