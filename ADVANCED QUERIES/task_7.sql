/*
How many contracts have been registered in the ‘salaries’ table with duration of more than one year and of value higher than or equal to $100,000?
*/
use mysql_project;
SELECT
	COUNT(*) AS Quantity
FROM salaries
WHERE DATEDIFF(to_date, from_date) > 365
  AND salary > 100000;