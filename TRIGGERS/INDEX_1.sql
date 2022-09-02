/*
create index which will speed up searching process, while
results will be filtered by hire_date
*/

SELECT * FROM employees
WHERE hire_date > '1999-05-31';

CREATE INDEX i_hire_date
ON employees(hire_date);

SELECT * FROM employees
WHERE hire_date > '1999-05-31';