-- Query should return all individuals, whose first name starts with Mark,
-- specify that the name can be succeeded by any sequence of characters
use mysql_project;
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');