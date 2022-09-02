-- What is the total amount of money spent on salaries for all contracts starting after the 1-st of january 1997

use mysql_project;
SELECT 
    SUM(salary) AS Salary_Amount
FROM
    salaries
WHERE
    from_date > '1997-01-01';