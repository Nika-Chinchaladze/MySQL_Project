-- Query should return all information from salaries table regarding
-- contacts from 66,000 to 70,000 dollars oer year
use mysql_project;
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;