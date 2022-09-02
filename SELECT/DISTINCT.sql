-- Query should return different hire_dates from employees table
use mysql_project;
SELECT DISTINCT
    hire_date
FROM
    employees;