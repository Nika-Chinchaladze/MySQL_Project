-- Query should return two columns,
-- the first column must contain annual salaries higher than 80,000 dollars.
-- the second column must show the number of employees contractes to that salary.
-- lastly, sort the output by the first column

use mysql_project;
SELECT 
    salary, 
    COUNT(emp_no) AS emp_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary ASC;