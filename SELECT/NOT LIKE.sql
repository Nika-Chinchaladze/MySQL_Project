-- Query shoud return all individuals from the empoyees table, whose first name contains don't 'Jack'
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');
