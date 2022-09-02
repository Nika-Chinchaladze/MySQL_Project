-- Query should return all individuals from the employees table, whose
-- first name is either Denis or Elvis
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');