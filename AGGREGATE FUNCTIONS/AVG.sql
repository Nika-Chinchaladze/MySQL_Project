-- What is the average annual salary paid to employees who started after the 1-st of january 1997

use mysql_project;
SELECT 
    AVG(salary) AS Avg_Salary
FROM
    salaries
WHERE
    from_date > '1997-01-01';