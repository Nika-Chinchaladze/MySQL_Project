-- Query should return number of annual contracts with a value higher than or equal to
-- $100,000 have been registered in the salaries table
use mysql_project;
SELECT 
    COUNT(DISTINCT salary)
FROM
    salaries
WHERE
    salary >= 100000;