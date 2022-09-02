/*
select all records from the salaries table of people whose salary is higher than $89,000 per annum,
ther create an index on the salary column of that table and chck if it has sped up the search of the same select statement
*/
use mysql_project;
SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;

CREATE INDEX i_salary
ON salaries(salary);

SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;