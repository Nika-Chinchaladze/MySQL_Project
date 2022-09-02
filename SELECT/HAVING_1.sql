-- Query should return all names that are encountered less than 200 times.
-- let the data refer to people hired after the 1-st of January 1999
use mysql_project;
SELECT 
    first_name, 
    COUNT(first_name) AS quantity
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY quantity DESC;