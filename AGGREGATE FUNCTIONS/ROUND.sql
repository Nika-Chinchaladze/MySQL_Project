-- Round the average amount of money spent on salaries for all contracts 
-- that started after the 1-st of january 1997 to a precision of cents.

use mysql_project;
SELECT 
    ROUND(AVG(salary), 2) AS Average_Salary
FROM
    salaries
WHERE
    from_date > '1997-01-01';