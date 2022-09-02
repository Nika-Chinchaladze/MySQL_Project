/*
Create index which will speed up searching process, while 
results will be filtered by first and last name
*/

SELECT * FROM employees
WHERE first_name = 'Munehiro'
  AND last_name = 'Dayana';

CREATE INDEX i_fullname
ON employees(first_name, last_name);

SELECT * FROM employees
WHERE first_name = 'Munehiro'
  AND last_name = 'Dayana';